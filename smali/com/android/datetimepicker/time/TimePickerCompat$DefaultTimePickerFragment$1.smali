.class Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment$1;
.super Landroid/app/TimePickerDialog;
.source "TimePickerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment$1;->this$0:Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 204
    packed-switch p2, :pswitch_data_0

    .line 210
    invoke-super {p0, p1, p2}, Landroid/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 213
    :goto_0
    return-void

    .line 207
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment$1;->cancel()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method
