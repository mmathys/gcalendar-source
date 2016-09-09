.class public Lcom/android/datetimepicker/DialogFragmentWithListener;
.super Landroid/app/DialogFragment;
.source "DialogFragmentWithListener.java"


# instance fields
.field private mDialogListener:Lcom/android/datetimepicker/DialogFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 37
    iget-object v0, p0, Lcom/android/datetimepicker/DialogFragmentWithListener;->mDialogListener:Lcom/android/datetimepicker/DialogFragmentListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/datetimepicker/DialogFragmentWithListener;->mDialogListener:Lcom/android/datetimepicker/DialogFragmentListener;

    invoke-interface {v0, p0}, Lcom/android/datetimepicker/DialogFragmentListener;->onDialogCancelled(Landroid/app/DialogFragment;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/android/datetimepicker/DialogFragmentWithListener;->mDialogListener:Lcom/android/datetimepicker/DialogFragmentListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/datetimepicker/DialogFragmentWithListener;->mDialogListener:Lcom/android/datetimepicker/DialogFragmentListener;

    invoke-interface {v0, p0}, Lcom/android/datetimepicker/DialogFragmentListener;->onDialogCreated(Landroid/app/DialogFragment;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 53
    iget-object v0, p0, Lcom/android/datetimepicker/DialogFragmentWithListener;->mDialogListener:Lcom/android/datetimepicker/DialogFragmentListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/datetimepicker/DialogFragmentWithListener;->mDialogListener:Lcom/android/datetimepicker/DialogFragmentListener;

    invoke-interface {v0, p0}, Lcom/android/datetimepicker/DialogFragmentListener;->onDialogDestroyed(Landroid/app/DialogFragment;)V

    .line 56
    :cond_0
    return-void
.end method

.method public setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/datetimepicker/DialogFragmentWithListener;->mDialogListener:Lcom/android/datetimepicker/DialogFragmentListener;

    .line 32
    return-void
.end method
