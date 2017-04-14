#' Look Up Information about an IP Address
#'
#' \code{ipinfo} looks up information about a given IP address using the
#' \href{https://ipinfo.io}{ipinfo.io} API.
#'
#' @param ip An IP address. If none is provided, your own IP address is used
#'
#' @return A list containing information about the IP address, including the
#' owner, the hostname (if applicable), and geological information.
#' @export
#'
#' @examples
#' \dontrun{
#' my_ip_info <- ipinfo()
#' google_dns <- ipinfo(ip = "8.8.8.8")
#' }
ipinfo <- function(ip = NULL) {
    target <- ifelse(
        test = is.null(ip),
        yes = "https://ipinfo.io/json",
        no = sprintf("https://ipinfo.io/%s/json", ip)
    )

    response <- httr::GET(url = target)
    httr::stop_for_status(response)

    httr::content(response)
}
