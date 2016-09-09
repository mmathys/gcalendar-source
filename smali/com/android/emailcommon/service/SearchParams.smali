.class public Lcom/android/emailcommon/service/SearchParams;
.super Ljava/lang/Object;
.source "SearchParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/SearchParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mEndDate:Ljava/util/Date;

.field public mFilter:Ljava/lang/String;

.field public mIncludeChildren:Z

.field public mLimit:I

.field public final mMailboxId:J

.field public mOffset:I

.field public final mStartDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/android/emailcommon/service/SearchParams$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/SearchParams$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/SearchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 47
    iput v2, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v3

    .line 187
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    .line 192
    :goto_1
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    .line 197
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 182
    goto :goto_0

    .line 190
    :cond_1
    iput-object v8, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    goto :goto_1

    .line 195
    :cond_2
    iput-object v8, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/android/emailcommon/service/SearchParams;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 109
    goto :goto_0

    .line 112
    :cond_3
    check-cast p1, Lcom/android/emailcommon/service/SearchParams;

    .line 113
    iget-wide v2, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    iget-wide v4, p1, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    iget-boolean v3, p1, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    .line 116
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    .line 117
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    iget v3, p1, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    iget v3, p1, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 124
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    iget v3, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    iget v4, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    iget-object v5, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x44

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "[SearchParams "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    iget-wide v4, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 168
    iget-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mStartDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 175
    return-void

    :cond_2
    move v0, v2

    .line 163
    goto :goto_0
.end method
