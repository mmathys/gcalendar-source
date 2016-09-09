.class public Lcom/google/android/gm/drive/FilesNotSharedDialog;
.super Landroid/app/DialogFragment;
.source "FilesNotSharedDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/google/android/gm/drive/FilesNotSharedDialog;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/gm/drive/FilesNotSharedDialog;

    invoke-direct {v0}, Lcom/google/android/gm/drive/FilesNotSharedDialog;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 35
    const-string v2, "numFiles"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gm/drive/FilesNotSharedDialog;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gm/drive/FilesNotSharedDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    const-string v1, "numFiles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gm/drive/FilesNotSharedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 48
    sget v3, Lcom/android/calendar/R$plurals;->files_not_shared_dialog_body:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 50
    return-object v0
.end method
