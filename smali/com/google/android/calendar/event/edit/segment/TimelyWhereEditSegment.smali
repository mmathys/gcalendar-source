.class public Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;
.super Lcom/android/calendar/event/edit/segment/WhereEditSegment;
.source "TimelyWhereEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;,
        Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatePropertyChange:Z

.field private mCache:Lcom/android/bitmap/BitmapCache;

.field private mCurrentAcceptedSuggestionId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

.field private mImageView:Landroid/widget/ImageView;

.field private mListener:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;

.field private mLocationAddress:Landroid/widget/TextView;

.field private mMapOptionsDialog:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

.field private final mPreviewImageHeight:I

.field private final mPreviewImageWidth:I

.field private mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mStructuredLocationDataListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mCurrentAcceptedSuggestionId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mAnimatePropertyChange:Z

    .line 67
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$1;-><init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationDataListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 76
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$2;-><init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mListener:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    sget v1, Lcom/android/calendar/R$dimen;->preview_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mPreviewImageWidth:I

    .line 105
    sget v1, Lcom/android/calendar/R$dimen;->preview_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mPreviewImageHeight:I

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->getPrimaryLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->onStructuredLocationChange(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationAddress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mCurrentAcceptedSuggestionId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method private determineInputLocale()Ljava/util/Locale;
    .locals 4

    .prologue
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 196
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 197
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 198
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->tryParseLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 201
    :cond_0
    sget-object v1, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->TAG:Ljava/lang/String;

    const-string v2, "Could not determine keyboard locale"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private getPrimaryLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 321
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    if-nez v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    goto :goto_0
.end method

.method private onStructuredLocationChange(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    .locals 9

    .prologue
    const/high16 v8, 0x3fc00000    # 1.5f

    const/4 v0, 0x0

    .line 272
    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getPostalAddress()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 276
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v4

    .line 280
    :goto_0
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getMapsClusterId()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getGeoCoordinates()Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    move-result-object v5

    .line 284
    if-eqz v5, :cond_3

    .line 285
    invoke-virtual {v5}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v5}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    if-eqz v5, :cond_1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    iget v5, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mPreviewImageWidth:I

    iget v6, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mPreviewImageHeight:I

    invoke-virtual {v0, v5, v6}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setDecodeDimensions(II)V

    .line 290
    new-instance v0, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;

    iget v5, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mPreviewImageWidth:I

    iget v6, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mPreviewImageHeight:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/timely/PlacePageOrMapRequestKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 292
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    invoke-virtual {v1, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0, p0}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->setStructuredDataVisibility(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;Z)V

    .line 298
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mAnimatePropertyChange:Z

    if-eqz v0, :cond_2

    .line 299
    sget v0, Lcom/android/calendar/R$id;->edit_segment_icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 300
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->colorFromEvent(Lcom/google/calendar/v2/client/service/api/events/Event;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 301
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 303
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 304
    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/Utils;->SINE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 305
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$integer;->event_editor_highlight_bounce_duration:I

    .line 306
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 310
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mAnimatePropertyChange:Z

    .line 311
    new-instance v2, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$4;-><init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;Landroid/widget/ImageView;)V

    sget v0, Lcom/android/calendar/R$integer;->event_editor_highlight_visible_duration:I

    .line 316
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 311
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    :cond_2
    return-void

    :cond_3
    move-object v3, v0

    move-object v2, v0

    goto/16 :goto_1

    :cond_4
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private setStructuredDataVisibility(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    .line 332
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 333
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getPostalAddress()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getPostalAddress()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 335
    :goto_0
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getGeoCoordinates()Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_1
    move v2, v1

    .line 338
    :goto_2
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationAddress:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 339
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 342
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 334
    goto :goto_0

    :cond_2
    move v1, v2

    .line 335
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private tryParseLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 208
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 209
    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    .line 220
    :cond_0
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "Unparseable locale: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 221
    :goto_0
    return-object p2

    .line 211
    :pswitch_0
    new-instance p2, Ljava/util/Locale;

    aget-object v0, v0, v3

    invoke-direct {p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_1
    new-instance p2, Ljava/util/Locale;

    aget-object v1, v0, v3

    aget-object v0, v0, v2

    invoke-direct {p2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_2
    new-instance p2, Ljava/util/Locale;

    aget-object v1, v0, v3

    aget-object v2, v0, v2

    aget-object v0, v0, v4

    invoke-direct {p2, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->afterTextChanged(Landroid/text/Editable;)V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->shouldIgnoreTextChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    goto :goto_0
.end method

.method public applyChangeAnimated(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mAnimatePropertyChange:Z

    .line 263
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iput-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mAnimatePropertyChange:Z

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mAnimatePropertyChange:Z

    throw v0
.end method

.method public canApplyChangeAnimated(Ljava/lang/String;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 251
    const-string v1, "com.google.android.calendar.event.location.structured"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->setTargetPosition(Landroid/graphics/Point;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    .line 253
    sget v0, Lcom/android/calendar/R$id;->edit_segment_icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->setTargetView(Landroid/view/View;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    .line 254
    const/4 v0, 0x1

    .line 256
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mMapOptionsDialog:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    invoke-direct {v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mMapOptionsDialog:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    .line 350
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mMapOptionsDialog:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mListener:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->setListener(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mMapOptionsDialog:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v1}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationDataListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 159
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 160
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mMapOptionsDialog:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    .line 161
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onFinishInflate()V

    .line 111
    sget v0, Lcom/android/calendar/R$id;->where_address:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationAddress:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/android/calendar/R$id;->where_map:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mImageView:Landroid/widget/ImageView;

    .line 113
    new-instance v0, Lcom/android/bitmap/UnrefedBitmapCache;

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bitmap/UnrefedBitmapCache;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mCache:Lcom/android/bitmap/BitmapCache;

    .line 114
    new-instance v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(I)V

    .line 117
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeVerticalCenter:F

    .line 119
    const v1, -0x777778

    iput v1, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 120
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mCache:Lcom/android/bitmap/BitmapCache;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    .line 122
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    invoke-virtual {v0, p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onFocusChange(Landroid/view/View;Z)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/android/calendar/Utils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-static {v0}, Lcom/android/calendar/Utils;->requestLocationPermissions(Landroid/app/Activity;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    .line 132
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStructuredLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 134
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationDataListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 135
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->getPrimaryLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->onStructuredLocationChange(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->TAG:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mMapOptionsDialog:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    .line 138
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mMapOptionsDialog:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mMapOptionsDialog:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mListener:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialog;->setListener(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$MapOptionsDialogListener;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    return-void
.end method

.method public bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method protected onSuggestionAccepted(Lcom/android/calendar/event/EventLocationAdapter$Result;)V
    .locals 5

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->determineInputLocale()Ljava/util/Locale;

    move-result-object v0

    .line 167
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onSuggestionAccepted(Lcom/android/calendar/event/EventLocationAdapter$Result;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mStructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    .line 173
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mCurrentAcceptedSuggestionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 174
    invoke-virtual {p1}, Lcom/android/calendar/event/EventLocationAdapter$Result;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v3}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;-><init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;Landroid/content/Context;Ljava/util/Locale;I)V

    sget-object v0, Lcom/google/android/calendar/net/AsyncRequestLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 188
    invoke-virtual {p1}, Lcom/android/calendar/event/EventLocationAdapter$Result;->getReference()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuggestionAccepted(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/android/calendar/event/EventLocationAdapter$Result;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->onSuggestionAccepted(Lcom/android/calendar/event/EventLocationAdapter$Result;)V

    return-void
.end method

.method public onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V

    .line 228
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->getPrimaryLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->setStructuredDataVisibility(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;Z)V

    .line 229
    return-void
.end method

.method public onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V

    .line 234
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->getPrimaryLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->setStructuredDataVisibility(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;Z)V

    .line 235
    return-void
.end method
