.class Lcom/android/calendar/timely/FindTimeGridSlabItem$1;
.super Ljava/lang/Object;
.source "FindTimeGridSlabItem.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridSlabItem;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeGridSlabItem;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridSlabItem;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabItem;->mListener:Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->access$000(Lcom/android/calendar/timely/FindTimeGridSlabItem;)Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDescriptionView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->access$100(Lcom/android/calendar/timely/FindTimeGridSlabItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabItem;->mListener:Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->access$000(Lcom/android/calendar/timely/FindTimeGridSlabItem;)Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;->onDescriptionNumLinesUpdated(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDescriptionView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->access$100(Lcom/android/calendar/timely/FindTimeGridSlabItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDescriptionView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->access$100(Lcom/android/calendar/timely/FindTimeGridSlabItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    goto :goto_0
.end method
