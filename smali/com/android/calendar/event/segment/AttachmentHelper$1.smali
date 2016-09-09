.class final Lcom/android/calendar/event/segment/AttachmentHelper$1;
.super Ljava/util/HashMap;
.source "AttachmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/segment/AttachmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string v0, "application/pdf"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_pdf:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_pdf:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_pdf:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "text/plain"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_text:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_text:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_text:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "image/jpeg"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_image:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_image:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_image:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "image/png"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_image:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_image:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_image:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "image/gif"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_image:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_image:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_image:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "application/vnd.google-apps.document"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_drive_doc:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_drive_doc:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_drive_doc:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "application/vnd.google-apps.spreadsheet"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_drive_sheet:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_drive_sheet:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_drive_sheet:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "application/vnd.google-apps.presentation"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_drive_slide:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_drive_slide:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_drive_slide:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_word:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_word:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_word:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_excel:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_excel:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_excel:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_powerpoint:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_powerpoint:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_powerpoint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "application/msword"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_word:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_word:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_word:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "application/vnd.ms-excel"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_excel:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_excel:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_excel:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "application/vnd.ms-powerpoint"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_powerpoint:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_powerpoint:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_powerpoint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "application/vnd.google-apps.audio"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_audio:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_audio:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_audio:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "application/vnd.google-apps.drawing"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_drive_drawing:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_drive_drawing:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_drive_drawing:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "application/vnd.google-apps.photo"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_image:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_image:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_image:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "application/vnd.google-apps.video"

    new-instance v1, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;

    sget v2, Lcom/android/calendar/R$string;->attachment_description_video:I

    sget v3, Lcom/android/calendar/R$string;->attachment_icon_video:I

    sget v4, Lcom/android/calendar/R$color;->attachment_color_video:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/segment/AttachmentHelper$AttachmentDescriptor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method
