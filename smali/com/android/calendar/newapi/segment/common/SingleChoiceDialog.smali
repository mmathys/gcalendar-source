.class public abstract Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;
.super Landroid/app/DialogFragment;
.source "SingleChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/DialogFragment;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mSelectedItem:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->mSelectedItem:I

    return-void
.end method


# virtual methods
.method protected abstract createListAdapter(I)Landroid/widget/ListAdapter;
.end method

.method protected abstract getValue(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TValueT;"
        }
    .end annotation
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;

    .line 88
    invoke-virtual {p0, p2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->getTargetRequestCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;->onDialogItemChosen(Ljava/lang/Object;I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->dismiss()V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    const-string v0, "single_choice_dialog_selected_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->mSelectedItem:I

    .line 53
    const-string v0, "single_choice_dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->mTitle:Ljava/lang/String;

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->mSelectedItem:I

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->createListAdapter(I)Landroid/widget/ListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->mSelectedItem:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->mTitle:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "single_choice_dialog_selected_item"

    iget v1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v0, "single_choice_dialog_title"

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method protected setSelectedItem(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->mSelectedItem:I

    .line 69
    return-void
.end method
