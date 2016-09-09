.class public Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;
.super Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;
.source "SingleChoiceColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;,
        Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog",
        "<",
        "Lcom/android/calendar/newapi/segment/common/ColorEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/calendar/newapi/segment/common/ColorPalette;ILandroid/app/Fragment;)Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;-><init>()V

    .line 32
    iput-object p0, v0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    .line 33
    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->setSelectedItem(I)V

    .line 34
    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 35
    return-object v0
.end method


# virtual methods
.method protected createListAdapter(I)Landroid/widget/ListAdapter;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/segment/common/ColorPalette;I)V

    return-object v0
.end method

.method protected getValue(I)Lcom/android/calendar/newapi/segment/common/ColorEntry;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->getColorEntry(I)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->getValue(I)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string v0, "argument_color_palette"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/ColorPalette;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    .line 44
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "argument_color_palette"

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    return-void
.end method
