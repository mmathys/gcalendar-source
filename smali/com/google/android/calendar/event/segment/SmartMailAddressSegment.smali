.class public Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;
.super Lcom/google/android/calendar/event/segment/TimelyLocationSegment;
.source "SmartMailAddressSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;
    }
.end annotation


# instance fields
.field private mAddressBuilder:Ljava/lang/StringBuilder;

.field private mPlaceName:Ljava/lang/String;

.field private final mRobotoMedium:Landroid/graphics/Typeface;

.field protected mShowPlaceName:Z

.field private mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v3, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mShowPlaceName:Z

    .line 68
    sget-object v0, Lcom/android/calendar/R$styleable;->SmartMailAddressSegment:[I

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    sget v1, Lcom/android/calendar/R$styleable;->SmartMailAddressSegment_show_place_name:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mShowPlaceName:Z

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    :cond_1
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mRobotoMedium:Landroid/graphics/Typeface;

    .line 79
    return-void
.end method


# virtual methods
.method protected extractLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getGoogleMapLink()Lcom/google/api/services/calendar/model/CalendarGoTo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    .line 109
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getGoogleMapLink()Lcom/google/api/services/calendar/model/CalendarGoTo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/CalendarGoTo;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getGoogleMapLink()Lcom/google/api/services/calendar/model/CalendarGoTo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/CalendarGoTo;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 112
    :cond_0
    new-instance v0, Lcom/google/android/calendar/utils/MapsUrlBuilder;

    invoke-direct {v0}, Lcom/google/android/calendar/utils/MapsUrlBuilder;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mAddressBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/utils/MapsUrlBuilder;->setAddress(Ljava/lang/String;)Lcom/google/android/calendar/utils/MapsUrlBuilder;

    .line 116
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getLatitude()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    .line 117
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getLongitude()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/utils/MapsUrlBuilder;->setGeoCoordinates(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/utils/MapsUrlBuilder;

    .line 118
    invoke-virtual {v0}, Lcom/google/android/calendar/utils/MapsUrlBuilder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->extractLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getAddressBuilder(Lcom/google/api/services/calendar/model/SmartMailAddress;Landroid/content/res/Resources;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    sget v1, Lcom/android/calendar/R$string;->address_intra_delimiter:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    if-eqz p1, :cond_4

    .line 161
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getStreetAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getStreetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getRegion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 176
    sget v1, Lcom/android/calendar/R$string;->address_intra_separator:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_4
    return-object v0
.end method

.method public final getRobotoMedium()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mRobotoMedium:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public onRefreshModel()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;->getPlaceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mPlaceName:Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    .line 94
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->getAddressBuilder(Lcom/google/api/services/calendar/model/SmartMailAddress;Landroid/content/res/Resources;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mAddressBuilder:Ljava/lang/StringBuilder;

    .line 95
    invoke-super {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->onRefreshModel()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->hide()V

    goto :goto_0
.end method

.method protected showContent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mSmartMailAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->hide()V

    .line 139
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mShowPlaceName:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->getValueId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mPlaceName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->showValueOrHideSegment(ILjava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->getDetailId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mAddressBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->showTextOrHide(ILjava/lang/CharSequence;)I

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->getValueId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->mAddressBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->showValueOrHideSegment(ILjava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->getDetailId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;->hideView(I)V

    goto :goto_0
.end method
