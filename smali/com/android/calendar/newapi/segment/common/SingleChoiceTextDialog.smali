.class public abstract Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;
.super Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;
.source "SingleChoiceTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog",
        "<TValueT;>;"
    }
.end annotation


# instance fields
.field private mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TValueT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;-><init>()V

    return-void
.end method

.method private static newInstance(Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            "FragmentT:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;",
            ">(",
            "Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog",
            "<TValueT;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<TValueT;>;ITFragmentT;I)",
            "Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog",
            "<TValueT;>;"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->mListItems:Ljava/util/ArrayList;

    .line 75
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->mValues:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p0, p3}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->setSelectedItem(I)V

    .line 77
    invoke-virtual {p0, p4, p5}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 78
    return-object p0
.end method

.method public static newIntegerBasedInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FragmentT:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ITFragmentT;I)",
            "Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/android/calendar/newapi/segment/common/SingleIntegerChoiceTextDialog;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/common/SingleIntegerChoiceTextDialog;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->newInstance(Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newParcelableBaseInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParcelableT::",
            "Landroid/os/Parcelable;",
            "FragmentT:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<TParcelableT;>;ITFragmentT;I)",
            "Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog",
            "<TParcelableT;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/android/calendar/newapi/segment/common/SingleParcelableChoiceTextDialog;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/common/SingleParcelableChoiceTextDialog;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->newInstance(Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createListAdapter(I)Landroid/widget/ListAdapter;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->mListItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog$SingleChoiceDialogTextAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-object v0
.end method

.method protected getValue(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TValueT;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v0, "single_choice_text_dialog_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->mListItems:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->restoreValuesFromInstanceState(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->mValues:Ljava/util/ArrayList;

    .line 88
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "single_choice_text_dialog_items"

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 112
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->saveValuesToInstanceState(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 113
    return-void
.end method

.method protected abstract restoreValuesFromInstanceState(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<TValueT;>;"
        }
    .end annotation
.end method

.method protected abstract saveValuesToInstanceState(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<TValueT;>;)V"
        }
    .end annotation
.end method
