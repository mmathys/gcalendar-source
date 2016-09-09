.class Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$6;
.super Ljava/lang/Object;
.source "BaseSuggestionEditSegment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getSuggestionContainer(Landroid/view/ViewGroup;Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

.field final synthetic val$scrolledChangeListener:Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$6;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$6;->val$scrolledChangeListener:Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$6;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->isSuggestionListScrolled()Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$600(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Z

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$6;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mIsScrolled:Z
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$6;->val$scrolledChangeListener:Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;

    invoke-interface {v1, v0}, Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;->onScrolledChange(Z)V

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$6;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # setter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mIsScrolled:Z
    invoke-static {v1, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$702(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;Z)Z

    .line 493
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 483
    return-void
.end method
