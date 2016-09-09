.class public interface abstract Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;
.super Ljava/lang/Object;
.source "AttachmentEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onNewAttachmentClicked()V
.end method

.method public abstract onOpenAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V
.end method

.method public abstract onRemoveAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V
.end method
