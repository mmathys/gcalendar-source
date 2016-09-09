.class Lcom/android/calendar/event/AccessCodePickerDialog$3;
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
    .line 54
    iput-object p1, p0, Lcom/android/calendar/event/AccessCodePickerDialog$3;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog$3;->this$0:Lcom/android/calendar/event/AccessCodePickerDialog;

    # getter for: Lcom/android/calendar/event/AccessCodePickerDialog;->mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;
    invoke-static {v0}, Lcom/android/calendar/event/AccessCodePickerDialog;->access$300(Lcom/android/calendar/event/AccessCodePickerDialog;)Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->setSelectedItemIndex(I)V

    .line 58
    return-void
.end method
