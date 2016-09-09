.class Lcom/android/calendar/event/CustomDurationDialog$3;
.super Ljava/lang/Object;
.source "CustomDurationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/CustomDurationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/CustomDurationDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/CustomDurationDialog;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/calendar/event/CustomDurationDialog$3;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$3;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/CustomDurationDialog;->onCancel(Landroid/content/DialogInterface;)V

    .line 141
    return-void
.end method
