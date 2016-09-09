.class public Lcom/android/calendar/newapi/segment/common/ColorEntry;
.super Ljava/lang/Object;
.source "ColorEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/newapi/segment/common/ColorEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

.field public final color:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/calendar/newapi/segment/common/ColorEntry$1;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/common/ColorEntry$1;-><init>()V

    sput-object v0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/ColorDescriptor;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/newapi/segment/common/ColorEntry$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/common/ColorEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/ColorDescriptor;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    .line 33
    iput p2, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    .line 34
    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iput-object p3, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static newDefaultColor(Landroid/content/res/Resources;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/newapi/segment/common/ColorEntry;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/android/calendar/newapi/segment/common/ColorEntry;

    const/4 v1, 0x0

    .line 43
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v2

    sget v3, Lcom/android/calendar/R$string;->edit_color_default_color:I

    .line 44
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/newapi/segment/common/ColorEntry;-><init>(Lcom/google/android/calendar/api/ColorDescriptor;ILjava/lang/String;)V

    .line 41
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 80
    const/4 v0, 0x1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 86
    check-cast p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;

    .line 88
    iget v1, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    iget v2, p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    if-ne v1, v2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    iget-object v2, p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/api/ColorDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 91
    :cond_3
    iget-object v1, p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->hashCode()I

    move-result v0

    .line 102
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    add-int/2addr v0, v1

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->apiDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget v0, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
