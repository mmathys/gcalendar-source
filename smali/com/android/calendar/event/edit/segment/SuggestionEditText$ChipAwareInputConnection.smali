.class Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SuggestionEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/SuggestionEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChipAwareInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 650
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 651
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # operator++ for: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreSelectionChange:I
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$508(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)I

    .line 667
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 669
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # operator-- for: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreSelectionChange:I
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$510(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)I

    .line 667
    return v0

    .line 669
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # operator-- for: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreSelectionChange:I
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$510(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)I

    throw v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 655
    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # invokes: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onDeletePressed()Z
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$400(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 4

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 676
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 677
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 678
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-le v2, v1, :cond_0

    .line 679
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # invokes: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onDeletePressed()Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$400(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x1

    .line 687
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    goto :goto_0
.end method
