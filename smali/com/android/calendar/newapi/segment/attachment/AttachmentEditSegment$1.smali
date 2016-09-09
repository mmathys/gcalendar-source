.class Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;
.super Ljava/lang/Object;
.source "AttachmentEditSegment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->onCarouselTileClick(Landroid/view/View;Lcom/google/android/calendar/api/attachments/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;

.field final synthetic val$item:Lcom/google/android/calendar/api/attachments/Attachment;

.field final synthetic val$removeMenuItem:Landroid/view/MenuItem;

.field final synthetic val$viewMenuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;Landroid/view/MenuItem;Lcom/google/android/calendar/api/attachments/Attachment;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;

    iput-object p2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->val$viewMenuItem:Landroid/view/MenuItem;

    iput-object p3, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->val$item:Lcom/google/android/calendar/api/attachments/Attachment;

    iput-object p4, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->val$removeMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->val$viewMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mListener:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->access$000(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->val$item:Lcom/google/android/calendar/api/attachments/Attachment;

    invoke-interface {v0, v2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;->onOpenAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V

    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->val$removeMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mListener:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->access$100(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;->val$item:Lcom/google/android/calendar/api/attachments/Attachment;

    invoke-interface {v0, v2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;->onRemoveAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
