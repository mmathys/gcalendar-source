.class Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;
.super Ljava/lang/Object;
.source "SuggestionEditText.java"

# interfaces
.implements Landroid/text/SpanWatcher;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/SuggestionEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Lcom/android/calendar/event/edit/segment/SuggestionEditText$1;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;-><init>(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$300(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Lcom/android/calendar/ListenerCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->shouldIgnoreTextChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$300(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Lcom/android/calendar/ListenerCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/ListenerCollection;->iterator()Lcom/android/calendar/ListenerCollection$ReleasableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    .line 639
    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0

    .line 642
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$300(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Lcom/android/calendar/ListenerCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->shouldIgnoreTextChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$300(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Lcom/android/calendar/ListenerCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/ListenerCollection;->iterator()Lcom/android/calendar/ListenerCollection$ReleasableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    .line 621
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 624
    :cond_0
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    check-cast p2, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    # invokes: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->registerChipSpan(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    invoke-static {v0, p2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$100(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 602
    :cond_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0

    .prologue
    .line 615
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    check-cast p2, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    # invokes: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->unregisterChipSpan(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    invoke-static {v0, p2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$200(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 609
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$300(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Lcom/android/calendar/ListenerCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->shouldIgnoreTextChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;->this$0:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->access$300(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Lcom/android/calendar/ListenerCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/ListenerCollection;->iterator()Lcom/android/calendar/ListenerCollection$ReleasableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    .line 630
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 633
    :cond_0
    return-void
.end method
