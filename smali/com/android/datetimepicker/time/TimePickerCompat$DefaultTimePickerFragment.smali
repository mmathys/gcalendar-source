.class public Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;
.super Lcom/android/datetimepicker/DialogFragmentWithListener;
.source "TimePickerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/time/TimePickerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTimePickerFragment"
.end annotation


# instance fields
.field private mTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/datetimepicker/DialogFragmentWithListener;-><init>()V

    return-void
.end method

.method public static newInstance(IIZ)Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;

    invoke-direct {v0}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;-><init>()V

    .line 174
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 175
    const-string v2, "hour"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v2, "minute"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v2, "24hour"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 179
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    const-string v1, "hour"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 190
    const-string v1, "minute"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 191
    const-string v1, "24hour"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 193
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->mTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 196
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 197
    instance-of v1, v0, Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    if-eqz v1, :cond_0

    .line 198
    new-instance v3, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;

    check-cast v0, Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    invoke-direct {v3, v0}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    .line 200
    :cond_0
    new-instance v0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment$1;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment$1;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0
.end method

.method public setOnTimeSetListener(Landroid/app/TimePickerDialog$OnTimeSetListener;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->mTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 184
    return-void
.end method
