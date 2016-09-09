.class Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;
.super Lcom/android/ex/chips/DropdownChipLayouter;
.source "GuestDropdownChipLayouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;
    }
.end annotation


# instance fields
.field private mContactPhotoCache:Lcom/android/bitmap/BitmapCache;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Lcom/android/bitmap/BitmapCache;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/DropdownChipLayouter;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;->mContactPhotoCache:Lcom/android/bitmap/BitmapCache;

    .line 53
    return-void
.end method

.method private getContactPhotoDrawable(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    sget v1, Lcom/android/calendar/R$dimen;->suggestion_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    new-instance v2, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;->mContactPhotoCache:Lcom/android/bitmap/BitmapCache;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V

    .line 106
    invoke-virtual {v2, v1, v1}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setDecodeDimensions(II)V

    .line 107
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;-><init>(Lcom/android/ex/chips/RecipientEntry;)V

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 108
    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/RecipientEntry;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;->reuseOrInflateView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)Landroid/view/View;

    move-result-object v1

    .line 60
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :cond_0
    :goto_0
    sget v0, Lcom/android/calendar/R$id;->description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :cond_1
    :goto_1
    sget v0, Lcom/android/calendar/R$id;->icon:I

    .line 83
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/bitmap/view/BitmapDrawableImageView;

    .line 84
    if-eqz v0, :cond_2

    .line 85
    invoke-direct {p0, p3}, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;->getContactPhotoDrawable(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setTypedDrawable(Lcom/android/bitmap/drawable/BasicBitmapDrawable;)V

    .line 87
    :cond_2
    return-object v1

    .line 66
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected getItemLayoutResId()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/calendar/R$layout;->suggestion_dropdown_item:I

    return v0
.end method

.method protected getItemLayoutResId(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;->getItemLayoutResId()I

    move-result v0

    return v0
.end method
