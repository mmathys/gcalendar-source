.class Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;
.super Ljava/lang/Object;
.source "ChipCollectionEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->initialize(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mMoveTypedText:Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$100(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mMoveTypedText:Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$102(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;Z)Z

    .line 142
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mInputMoveMarker:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$200(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mInputMoveMarker:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$200(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 144
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 145
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setSelection(I)V

    .line 146
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 147
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->endIgnoreTextChanges()V

    .line 148
    invoke-interface {p1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 150
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 115
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->shouldIgnoreTextChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectedChip()Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    if-lez p4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_0

    .line 119
    if-eqz p3, :cond_2

    .line 120
    # getter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "beforeTextChanged count: %s, after: %s and chip is selected"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 120
    invoke-static {v0, v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    # setter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mMoveTypedText:Z
    invoke-static {v0, v6}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$102(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;Z)Z

    .line 126
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->beginIgnoreTextChanges()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mMoveTypedText:Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$100(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;->this$0:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    # getter for: Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mInputMoveMarker:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->access$200(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)Ljava/lang/Object;

    move-result-object v1

    add-int v2, p2, p4

    const/16 v3, 0x11

    invoke-interface {v0, v1, p2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 136
    :cond_0
    return-void
.end method
