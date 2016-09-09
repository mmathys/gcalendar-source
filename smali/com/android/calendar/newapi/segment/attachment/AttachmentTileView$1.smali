.class Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AttachmentTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->onContentViewSet(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView$1;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView$1;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;

    # invokes: Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->updateIconVisibility()V
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->access$000(Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;)V

    .line 54
    return-void
.end method
