.class public Lcom/android/datetimepicker/time/TimePickerCompat;
.super Ljava/lang/Object;
.source "TimePickerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;,
        Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;,
        Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;,
        Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private mDialogFragmentListener:Lcom/android/datetimepicker/DialogFragmentListener;

.field private mFragment:Landroid/app/DialogFragment;

.field private final mOnTimeSetListener:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mOnTimeSetListener:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    .line 50
    return-void
.end method


# virtual methods
.method public getFragment()Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method public initialize(IIZ)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 65
    :cond_0
    invoke-static {}, Lcom/android/datetimepicker/Utils;->isRunningLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {p1, p2, p3}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->newInstance(IIZ)Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mOnTimeSetListener:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    invoke-direct {v1, v2}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->setOnTimeSetListener(Landroid/app/TimePickerDialog$OnTimeSetListener;)V

    .line 69
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mDialogFragmentListener:Lcom/android/datetimepicker/DialogFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    .line 70
    iput-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_1
    new-instance v0, Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mOnTimeSetListener:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    .line 77
    invoke-static {v0, p1, p2, p3}, Lcom/android/datetimepicker/time/TimePickerDialog;->newInstance(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/android/datetimepicker/time/TimePickerDialog;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mDialogFragmentListener:Lcom/android/datetimepicker/DialogFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    .line 83
    iput-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    goto :goto_0
.end method

.method public initialize(Landroid/app/DialogFragment;)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 92
    :cond_0
    instance-of v0, p1, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 93
    check-cast v0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;

    new-instance v1, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mOnTimeSetListener:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    invoke-direct {v1, v2}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->setOnTimeSetListener(Landroid/app/TimePickerDialog$OnTimeSetListener;)V

    .line 100
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    .line 101
    return-void

    .line 95
    :cond_2
    instance-of v0, p1, Lcom/android/datetimepicker/time/TimePickerDialog;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/android/datetimepicker/time/TimePickerDialog;

    new-instance v1, Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mOnTimeSetListener:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    invoke-direct {v1, v2}, Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->setOnTimeSetListener(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;)V

    goto :goto_0
.end method

.method public setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mDialogFragmentListener:Lcom/android/datetimepicker/DialogFragmentListener;

    .line 54
    return-void
.end method

.method public setTargetFragment(Landroid/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FragmentT:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;",
            ">(TFragmentT;)V"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to set target fragment before #initialize(...) was called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat;->mFragment:Landroid/app/DialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 123
    return-void
.end method
