.class Lcom/android/calendar/groove/CustomGrooveFragment$4;
.super Ljava/lang/Object;
.source "CustomGrooveFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CustomGrooveFragment;->initEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/CustomGrooveFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CustomGrooveFragment;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/calendar/groove/CustomGrooveFragment$4;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 155
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment$4;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    # getter for: Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/calendar/groove/CustomGrooveFragment;->access$100(Lcom/android/calendar/groove/CustomGrooveFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment$4;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    # getter for: Lcom/android/calendar/groove/CustomGrooveFragment;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;
    invoke-static {v0}, Lcom/android/calendar/groove/CustomGrooveFragment;->access$200(Lcom/android/calendar/groove/CustomGrooveFragment;)Lcom/android/calendar/utils/widgets/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->show(Z)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment$4;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    # getter for: Lcom/android/calendar/groove/CustomGrooveFragment;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;
    invoke-static {v0}, Lcom/android/calendar/groove/CustomGrooveFragment;->access$200(Lcom/android/calendar/groove/CustomGrooveFragment;)Lcom/android/calendar/utils/widgets/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->hide(Z)V

    goto :goto_0
.end method
