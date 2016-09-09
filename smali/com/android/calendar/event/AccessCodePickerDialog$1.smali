.class Lcom/android/calendar/event/AccessCodePickerDialog$1;
.super Ljava/lang/Object;
.source "AccessCodePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/AccessCodePickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/AccessCodePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/AccessCodePickerDialog;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$1;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 84
    return-void
.end method
