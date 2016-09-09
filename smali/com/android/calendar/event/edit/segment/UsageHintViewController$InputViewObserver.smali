.class Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;
.super Ljava/lang/Object;
.source "UsageHintViewController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/UsageHintViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputViewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;)V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;-><init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # invokes: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->updateUsageHintPointerPosition()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1600(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V

    .line 738
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointerParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1500(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 717
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # invokes: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->updateUsageHintPointerPosition()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1600(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V

    .line 718
    return-void

    .line 716
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionChanged(II)V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # invokes: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->updateUsageHintPointerPosition()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1600(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V

    .line 723
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 733
    return-void
.end method
