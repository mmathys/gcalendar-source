.class public Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;
.super Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;
.source "QuickCreateSuggestionAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContactPhotoCache:Lcom/android/bitmap/BitmapCache;

.field private final mContactPhotoSize:I

.field private final mContext:Landroid/content/Context;

.field private final mDateTimeSuggestionContentDescription:Ljava/lang/String;

.field private final mGenericSuggestionContentDescription:Ljava/lang/String;

.field private final mLocationSuggestionContentDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    sget v1, Lcom/android/calendar/R$string;->quick_create_location_content_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mLocationSuggestionContentDescription:Ljava/lang/String;

    .line 52
    sget v1, Lcom/android/calendar/R$string;->quick_create_suggestion_content_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mGenericSuggestionContentDescription:Ljava/lang/String;

    .line 54
    sget v1, Lcom/android/calendar/R$string;->quick_create_datetime_content_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mDateTimeSuggestionContentDescription:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContactPhotoCache:Lcom/android/bitmap/BitmapCache;

    .line 58
    sget v1, Lcom/android/calendar/R$dimen;->suggestion_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContactPhotoSize:I

    .line 59
    return-void
.end method

.method private getAvailabilityColor(I)I
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->quickcreate_availabile_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 170
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->quickcreate_partially_availabile_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->quickcreate_unavailable_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected getAdditionalInfo(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 86
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/FormattedText;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/FormattedText;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    iget v1, v1, Lcom/google/personalization/assist/annotate/api/nano/FormattedText;->availability:I

    invoke-direct {p0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->getAvailabilityColor(I)I

    move-result v1

    .line 90
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 91
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->subsubtext:Lcom/google/personalization/assist/annotate/api/nano/FormattedText;

    iget-object v3, v3, Lcom/google/personalization/assist/annotate/api/nano/FormattedText;->text:Ljava/lang/String;

    .line 92
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 91
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 96
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getAdditionalInfo(Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->getAdditionalInfo(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    iget v0, v0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->assistanceType:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 65
    invoke-static {p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->getLastFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    const/16 v2, 0x10a

    if-ne v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    const/4 v2, 0x1

    .line 70
    invoke-static {v1, v0, v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->getTimeLabel(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/EventTime;Z)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    const-string v1, " ..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    const-string v1, " ..."

    const-string v2, "\u2026"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->query:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->getTitle(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected isSuggestionEqual(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isSuggestionEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    check-cast p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->isSuggestionEqual(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Z

    move-result v0

    return v0
.end method

.method protected setImage(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Lcom/android/bitmap/view/BitmapDrawableImageView;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 105
    const/4 v2, -0x2

    .line 106
    sget v3, Lcom/android/calendar/R$drawable;->quantum_ic_create_googblue_24:I

    .line 108
    const/4 v1, 0x1

    .line 110
    iget-object v4, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    if-eqz v4, :cond_6

    .line 111
    iget-object v4, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    iget v4, v4, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->assistanceType:I

    .line 112
    const/4 v5, 0x2

    if-ne v5, v4, :cond_3

    .line 113
    invoke-static {p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->getLastFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v4

    .line 114
    if-eqz v4, :cond_2

    .line 115
    iget-object v4, v4, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    .line 116
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 118
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    iget-object v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContactPhotoCache:Lcom/android/bitmap/BitmapCache;

    invoke-direct {v2, v1, v5, v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V

    .line 122
    iget v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContactPhotoSize:I

    iget v6, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContactPhotoSize:I

    invoke-virtual {v2, v5, v6}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setDecodeDimensions(II)V

    .line 123
    invoke-static {}, Lcom/android/calendar/timely/ContactInfo;->newBuilder()Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    .line 124
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/calendar/timely/ContactInfo$Builder;->setFocusId(Ljava/lang/Long;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v5

    iget-object v6, v4, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    .line 125
    invoke-virtual {v5, v6}, Lcom/android/calendar/timely/ContactInfo$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/android/calendar/timely/ContactInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/timely/ContactInfo$Builder;->build()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v5

    .line 126
    new-instance v6, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    iget-object v7, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/android/calendar/timely/ContactPhotoRequestKey;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ContactInfo;)V

    .line 126
    invoke-virtual {v2, v6}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 128
    invoke-virtual {p2, v2}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setTypedDrawable(Lcom/android/bitmap/drawable/BasicBitmapDrawable;)V

    .line 129
    iget-object v2, v4, Lcom/google/personalization/assist/annotate/api/nano/Contact;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    sget v2, Lcom/android/calendar/R$dimen;->suggestion_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    move v2, v1

    move v1, v0

    move v0, v3

    .line 153
    :goto_1
    invoke-virtual {p2}, Lcom/android/bitmap/view/BitmapDrawableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 154
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    invoke-virtual {p2, v3}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p2, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setImageResource(I)V

    .line 160
    :cond_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_0

    .line 139
    :cond_3
    const/16 v0, 0x1c

    if-ne v0, v4, :cond_4

    .line 140
    sget v0, Lcom/android/calendar/R$drawable;->ic_location_blue:I

    .line 141
    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mLocationSuggestionContentDescription:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 142
    :cond_4
    const/16 v0, 0x1d

    if-ne v0, v4, :cond_5

    .line 143
    sget v0, Lcom/android/calendar/R$drawable;->ic_date_blue:I

    .line 144
    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mDateTimeSuggestionContentDescription:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 146
    :cond_5
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->ASSISTANCE_TYPES_TO_ICON_RES_IDS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->ASSISTANCE_TYPES_TO_ICON_RES_IDS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->mGenericSuggestionContentDescription:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method protected bridge synthetic setImage(Ljava/lang/Object;Lcom/android/bitmap/view/BitmapDrawableImageView;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->setImage(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Lcom/android/bitmap/view/BitmapDrawableImageView;)V

    return-void
.end method
