.class public Lcom/android/calendar/timely/FindTimeGridData;
.super Ljava/lang/Object;
.source "FindTimeGridData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/FindTimeGridData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIndex:I

.field private mSuggestions:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/android/calendar/timely/FindTimeGridData$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/FindTimeGridData$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/FindTimeGridData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/android/calendar/timely/TimelineSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridData;->mSuggestions:Lcom/google/common/collect/ImmutableList;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeGridData;->mIndex:I

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/timely/FindTimeGridData;

    if-nez v2, :cond_2

    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    check-cast p1, Lcom/android/calendar/timely/FindTimeGridData;

    .line 92
    iget v2, p0, Lcom/android/calendar/timely/FindTimeGridData;->mIndex:I

    iget v3, p1, Lcom/android/calendar/timely/FindTimeGridData;->mIndex:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridData;->mSuggestions:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/android/calendar/timely/FindTimeGridData;->mSuggestions:Lcom/google/common/collect/ImmutableList;

    .line 93
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getSuggestionIndex()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/calendar/timely/FindTimeGridData;->mIndex:I

    return v0
.end method

.method public getSuggestions()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridData;->mSuggestions:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/calendar/timely/FindTimeGridData;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridData;->mSuggestions:Lcom/google/common/collect/ImmutableList;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setSuggestionIndex(I)Lcom/android/calendar/timely/FindTimeGridData;
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/android/calendar/timely/FindTimeGridData;->mIndex:I

    .line 75
    return-object p0
.end method

.method public setSuggestions(Lcom/google/common/collect/ImmutableList;)Lcom/android/calendar/timely/FindTimeGridData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;)",
            "Lcom/android/calendar/timely/FindTimeGridData;"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridData;->mSuggestions:Lcom/google/common/collect/ImmutableList;

    .line 60
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridData;->mSuggestions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 45
    iget v0, p0, Lcom/android/calendar/timely/FindTimeGridData;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void
.end method
