.class Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;
.super Ljava/lang/Object;
.source "AttachmentsEditSegment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onCarouselTileClick(Landroid/view/View;Lcom/google/api/services/calendar/model/EventAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

.field final synthetic val$attachmentUrl:Ljava/lang/String;

.field final synthetic val$attachmentView:Lcom/google/android/calendar/event/view/AttachmentView;

.field final synthetic val$removeMenuItem:Landroid/view/MenuItem;

.field final synthetic val$viewMenuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;Landroid/view/MenuItem;Lcom/google/android/calendar/event/view/AttachmentView;Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->val$viewMenuItem:Landroid/view/MenuItem;

    iput-object p3, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->val$attachmentView:Lcom/google/android/calendar/event/view/AttachmentView;

    iput-object p4, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->val$removeMenuItem:Landroid/view/MenuItem;

    iput-object p5, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->val$attachmentUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 402
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->val$viewMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->val$attachmentView:Lcom/google/android/calendar/event/view/AttachmentView;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getAccountName()Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$000(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/event/view/AttachmentView;->openAttachment(Ljava/lang/String;)V

    .line 409
    :goto_0
    return v0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->val$removeMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;->val$attachmentUrl:Ljava/lang/String;

    # invokes: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->removeAttachment(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$100(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
