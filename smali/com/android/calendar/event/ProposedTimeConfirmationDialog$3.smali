.class Lcom/android/calendar/event/ProposedTimeConfirmationDialog$3;
.super Ljava/lang/Object;
.source "ProposedTimeConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$3;->this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$3;->this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->onCancel(Landroid/content/DialogInterface;)V

    .line 127
    return-void
.end method
