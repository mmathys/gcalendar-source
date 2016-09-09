.class Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$5;
.super Ljava/lang/Object;
.source "BaseSuggestionEditSegment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$5;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 463
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$5;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 465
    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$5;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$5;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    # invokes: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->selectItemAtPosition(I)V
    invoke-static {v1, v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$500(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;I)V

    .line 467
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$5;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->requestFocus()Z

    .line 470
    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$5;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->setFullScreen(Z)V
    invoke-static {v1, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$300(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;Z)V

    .line 472
    const/4 v0, 0x1

    .line 474
    :cond_1
    return v0
.end method
