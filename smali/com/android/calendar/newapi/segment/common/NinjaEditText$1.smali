.class Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;
.super Ljava/lang/Object;
.source "NinjaEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/segment/common/NinjaEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

.field final synthetic val$watcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/segment/common/NinjaEditText;Landroid/text/TextWatcher;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;->this$0:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    iput-object p2, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;->val$watcher:Landroid/text/TextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;->this$0:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    # getter for: Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->access$000(Lcom/android/calendar/newapi/segment/common/NinjaEditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;->val$watcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 68
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;->this$0:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    # getter for: Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->access$000(Lcom/android/calendar/newapi/segment/common/NinjaEditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;->val$watcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 54
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;->this$0:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    # getter for: Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->access$000(Lcom/android/calendar/newapi/segment/common/NinjaEditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;->val$watcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 61
    :cond_0
    return-void
.end method
