.class Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog$2;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;)V
    .locals 0

    .prologue
    .line 1986
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog$2;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog$2;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->mDetailsFragment:Lcom/android/calendar/event/edit/EditDetailsFragment;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->access$2700(Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;)Lcom/android/calendar/event/edit/EditDetailsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog$2;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->mDetailsFragment:Lcom/android/calendar/event/edit/EditDetailsFragment;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->access$2700(Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;)Lcom/android/calendar/event/edit/EditDetailsFragment;

    move-result-object v0

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->cancelEdit()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$2800(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    .line 1993
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog$2;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->dismiss()V

    .line 1994
    return-void
.end method
