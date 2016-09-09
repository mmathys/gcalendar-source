.class public abstract Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditSpinnerTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mDefaultPadding:I

.field private mDefaultTextColor:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedTextColor:I

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    sget v1, Lcom/android/calendar/R$color;->edit_text_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mDefaultTextColor:I

    .line 34
    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mSelectedTextColor:I

    .line 35
    sget v1, Lcom/android/calendar/R$dimen;->edit_segment_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mDefaultPadding:I

    .line 36
    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mSpinner:Landroid/widget/Spinner;

    .line 37
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;

    .line 45
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 46
    :goto_0
    iget-object v5, v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mSelectedTextColor:I

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v3, v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mDefaultPadding:I

    iget v6, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mDefaultPadding:I

    invoke-virtual {v3, v5, v2, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48
    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    return-object v4

    :cond_0
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget v3, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mDefaultTextColor:I

    goto :goto_1

    .line 48
    :cond_2
    const/4 v2, 0x4

    goto :goto_2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->getTextAtPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getTextAtPosition(I)Ljava/lang/String;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->edit_segment_spinner_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    new-instance v2, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;-><init>(Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;Landroid/view/ViewGroup;)V

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;

    .line 74
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;->getTextAtPosition(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
