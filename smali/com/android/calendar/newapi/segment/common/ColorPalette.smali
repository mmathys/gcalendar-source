.class public Lcom/android/calendar/newapi/segment/common/ColorPalette;
.super Ljava/lang/Object;
.source "ColorPalette.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/newapi/segment/common/ColorPalette;",
            ">;"
        }
    .end annotation
.end field

.field private static final paletteIndexLessThan:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/calendar/api/ApiColor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mColorEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/newapi/segment/common/ColorEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/android/calendar/newapi/segment/common/ColorPalette$1;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette$1;-><init>()V

    sput-object v0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    new-instance v0, Lcom/android/calendar/newapi/segment/common/ColorPalette$2;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette$2;-><init>()V

    sput-object v0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->paletteIndexLessThan:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/newapi/segment/common/ColorPalette$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/common/ColorPalette;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/newapi/segment/common/ColorEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    .line 108
    return-void
.end method

.method private static convertColors(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/calendar/api/ApiColor;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/newapi/segment/common/ColorEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 132
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/ApiColor;

    .line 133
    new-instance v3, Lcom/android/calendar/newapi/segment/common/ColorEntry;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/calendar/api/ApiColor;->getColorDescriptor()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v4

    .line 136
    invoke-virtual {v0}, Lcom/google/android/calendar/api/ApiColor;->getBackgroundColor()I

    move-result v5

    .line 137
    invoke-virtual {v0}, Lcom/google/android/calendar/api/ApiColor;->getColorName()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/android/calendar/newapi/segment/common/ColorEntry;-><init>(Lcom/google/android/calendar/api/ColorDescriptor;ILjava/lang/String;)V

    .line 133
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_0
    return-object v2
.end method

.method public static newInstance(Landroid/content/res/Resources;Ljava/util/Collection;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/newapi/segment/common/ColorPalette;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/calendar/api/ApiColor;",
            ">;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ")",
            "Lcom/android/calendar/newapi/segment/common/ColorPalette;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    sget-object v1, Lcom/android/calendar/newapi/segment/common/ColorPalette;->paletteIndexLessThan:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->convertColors(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 35
    invoke-static {p0, p2}, Lcom/android/calendar/newapi/segment/common/ColorEntry;->newDefaultColor(Landroid/content/res/Resources;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/android/calendar/newapi/segment/common/ColorPalette;

    invoke-direct {v1, v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 144
    if-ne p0, p1, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 148
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_2
    check-cast p1, Lcom/android/calendar/newapi/segment/common/ColorPalette;

    .line 151
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getColorEntry(I)Lcom/android/calendar/newapi/segment/common/ColorEntry;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/ColorEntry;

    return-object v0
.end method

.method public getColorEntry(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/android/calendar/newapi/segment/common/ColorEntry;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->getColorIndex(Lcom/google/android/calendar/api/ColorDescriptor;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->getColorEntry(I)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v0

    return-object v0
.end method

.method public getColorIndex(Lcom/google/android/calendar/api/ColorDescriptor;)I
    .locals 4

    .prologue
    .line 50
    if-nez p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 55
    :cond_0
    return v1

    .line 53
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/ColorEntry;

    iget-object v0, v0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {p1, v0}, Lcom/google/android/calendar/api/ColorDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Color not found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorPalette;->mColorEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 91
    return-void
.end method
