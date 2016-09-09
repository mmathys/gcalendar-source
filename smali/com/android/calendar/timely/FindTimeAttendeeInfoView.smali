.class public Lcom/android/calendar/timely/FindTimeAttendeeInfoView;
.super Landroid/widget/LinearLayout;
.source "FindTimeAttendeeInfoView.java"


# instance fields
.field private mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mImageSize:I

.field private mPhotoView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->setOrientation(I)V

    .line 29
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$dimen;->find_time_grid_attendee_photo_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mImageSize:I

    .line 33
    sget v0, Lcom/android/calendar/R$layout;->find_time_attendee_info_view:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 34
    sget v0, Lcom/android/calendar/R$id;->display_name:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mDisplayNameView:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    sget v0, Lcom/android/calendar/R$id;->photo:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mPhotoView:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->setFocusable(Z)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/FindTimeAttendeeInfoView;)Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/FindTimeAttendeeInfoView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onUpdate(I)V
    .locals 6

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mDisplayNameView:Landroid/widget/TextView;

    sget v2, Lcom/android/calendar/R$plurals;->find_a_time_invisible_attendee:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 94
    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mPhotoView:Landroid/widget/ImageView;

    sget v2, Lcom/android/calendar/R$drawable;->find_time_more_attendees:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p1

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 61
    new-instance v6, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    .line 62
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v7

    new-instance v0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;-><init>(Lcom/android/calendar/timely/FindTimeAttendeeInfoView;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;)V

    invoke-direct {v6, v5, v7, v8, v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;)V

    iput-object v6, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    .line 77
    new-instance v0, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/calendar/timely/ContactPhotoRequestKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    iget v3, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mImageSize:I

    iget v4, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mImageSize:I

    invoke-virtual {v1, v3, v4}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setDecodeDimensions(II)V

    .line 80
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    iget v3, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mImageSize:I

    iget v4, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mImageSize:I

    invoke-virtual {v1, v8, v8, v3, v4}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setBounds(IIII)V

    .line 81
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 85
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    return-void

    :cond_1
    move-object v2, p2

    .line 56
    goto :goto_0
.end method
