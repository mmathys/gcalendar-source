.class public Lcom/android/calendar/newapi/screen/DiscardChangesDialog;
.super Landroid/app/DialogFragment;
.source "DiscardChangesDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/screen/DiscardChangesDialog$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Fragment;I)Lcom/android/calendar/newapi/screen/DiscardChangesDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/calendar/newapi/screen/DiscardChangesDialog$Callback;",
            ">(TT;I)",
            "Lcom/android/calendar/newapi/screen/DiscardChangesDialog;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string v1, "ARG_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    new-instance v1, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;

    invoke-direct {v1}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;-><init>()V

    .line 35
    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->setArguments(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 37
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 52
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->discard_dialog_discard:I

    .line 54
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/calendar/newapi/screen/DiscardChangesDialog$2;

    invoke-direct {v3, p0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog$2;-><init>(Lcom/android/calendar/newapi/screen/DiscardChangesDialog;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->discard_dialog_keep_editing:I

    .line 63
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/newapi/screen/DiscardChangesDialog$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog$1;-><init>(Lcom/android/calendar/newapi/screen/DiscardChangesDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 52
    return-object v0
.end method
