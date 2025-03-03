#Requires AutoHotkey v2.0
#Include lib\resources\AttachmentBuilder.ahk
#Include lib\resources\FormData.ahk
#Include lib\resources\JSON.ahk
#Include lib\resources\EmbedBuilder.ahk
#Include lib\resources\WebHookBuilder.ahk
WebhookURL := "https://discord.com/api/webhooks/1337184082420826174/r2D8cYjrG5iPniO90Tiv90rI8b_uMYxv21eSSouss1tmjNa4oNjjOMZ5MT6mwjcSPxoE"

g::sendWebhook()
sendWebhook() {

    try {
        if (WebhookURL != "") {
            Webhook := WebHookBuilder(WebhookURL)
        }
    } catch {
        MsgBox("Your webhook URL is not valid.", "Webhook", 4096 + 0)
        return
    }

    ; Send the webhook
    try {
        Webhook.send({
            content: "this is a message"
        })

        
    } catch {
        
    }
}
