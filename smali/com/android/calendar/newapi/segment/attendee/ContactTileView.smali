.class public Lcom/android/calendar/newapi/segment/attendee/ContactTileView;
.super Lcom/android/calendar/newapi/view/TextTileView;
.source "ContactTileView.java"


# instance fields
.field private mA11yResponseStatusMessages:[Ljava/lang/String;

.field private mAttendee:Lcom/google/android/calendar/api/attendee/Attendee;

.field private mContactImage:Landroid/widget/ImageView;

.field private final mContactPhotoHeight:I

.field private final mContactPhotoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TextTileView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->guest_segment_contact_badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mContactPhotoWidth:I

    .line 27
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->guest_segment_contact_badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mContactPhotoHeight:I

    .line 29
    return-void
.end method


# virtual methods
.method protected adjustContentMinHeight(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->tile_two_line_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 49
    return-void
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mAttendee:Lcom/google/android/calendar/api/attendee/Attendee;

    invoke-static {v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->getAttendeeName(Lcom/google/android/calendar/api/attendee/Attendee;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mAttendee:Lcom/google/android/calendar/api/attendee/Attendee;

    iget-object v0, v0, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    iget v2, v0, Lcom/google/android/calendar/api/attendee/Response;->status:I

    .line 76
    const-string v0, ""

    .line 77
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mA11yResponseStatusMessages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mA11yResponseStatusMessages:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 80
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, " "

    invoke-static {v0, v2, v1}, Lcom/android/calendar/AccessibilityUtils;->appendButtonLabel(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/view/TextTileView;->onContentViewSet(Landroid/view/View;)V

    .line 40
    sget v0, Lcom/android/calendar/R$id;->contact_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mContactImage:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->attendee_a11y_response_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mA11yResponseStatusMessages:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setAttendee(Lcom/google/android/calendar/api/attendee/Attendee;)Lcom/android/calendar/newapi/segment/attendee/ContactTileView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mAttendee:Lcom/google/android/calendar/api/attendee/Attendee;

    .line 54
    invoke-static {p1}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->getAttendeeName(Lcom/google/android/calendar/api/attendee/Attendee;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 55
    new-instance v0, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    .line 56
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->getContactInfo(Lcom/google/android/calendar/api/attendee/Attendee;)Lcom/android/calendar/timely/ContactInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/ContactPhotoRequestKey;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ContactInfo;)V

    .line 57
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/bitmap/BitmapCache;->clear()V

    .line 58
    new-instance v1, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    .line 59
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V

    .line 60
    iget v2, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mContactPhotoWidth:I

    iget v3, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mContactPhotoHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setDecodeDimensions(II)V

    .line 61
    iget v2, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mContactPhotoWidth:I

    iget v3, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mContactPhotoHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setBounds(IIII)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 63
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->mContactImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->setTag(Ljava/lang/Object;)V

    .line 66
    return-object p0
.end method

.method protected setupView()V
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/android/calendar/R$layout;->newapi_tile_content_contact:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->setContentView(I)Lcom/android/calendar/newapi/view/TileView;

    .line 34
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attendee/ContactTileView;->treatAsButton()Lcom/android/calendar/newapi/view/TileView;

    .line 35
    return-void
.end method
