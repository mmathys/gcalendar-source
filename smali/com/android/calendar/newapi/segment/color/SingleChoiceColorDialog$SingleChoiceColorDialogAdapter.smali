.class Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "SingleChoiceColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChoiceColorDialogAdapter"
.end annotation


# instance fields
.field private final mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mSelectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/segment/common/ColorPalette;I)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    .line 78
    iput p3, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->mSelectedItem:I

    .line 79
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/calendar/newapi/segment/common/ColorEntry;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->getColorEntry(I)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->getItem(I)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 93
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 98
    if-nez p2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->newapi_single_choice_color_dialog_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    new-instance v2, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v0}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->getItem(I)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v3

    iget v2, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->mSelectedItem:I

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$ColorViewHolder;->setEntry(Lcom/android/calendar/newapi/segment/common/ColorEntry;Z)V

    .line 105
    return-object v1

    .line 104
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/SingleChoiceColorDialog$SingleChoiceColorDialogAdapter;->mColorPalette:Lcom/android/calendar/newapi/segment/common/ColorPalette;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->isEmpty()Z

    move-result v0

    return v0
.end method
