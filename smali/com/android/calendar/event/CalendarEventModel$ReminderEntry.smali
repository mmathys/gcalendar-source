.class public Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/CalendarEventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReminderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMethod:I

.field private final mMinutes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry$1;

    invoke-direct {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    .line 209
    iput p2, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    .line 210
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/event/CalendarEventModel$1;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static valueOf(I)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;)I
    .locals 2

    .prologue
    .line 256
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    if-eq v0, v1, :cond_0

    .line 257
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v1, p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    sub-int/2addr v0, v1

    .line 262
    :goto_0
    return v0

    .line 259
    :cond_0
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v0, v1, :cond_1

    .line 260
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v1, p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 175
    check-cast p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->compareTo(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 224
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    if-eqz v2, :cond_0

    .line 231
    check-cast p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    .line 233
    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v3, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    if-ne v2, v3, :cond_0

    .line 240
    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    iget v3, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    if-eq v2, v1, :cond_3

    :cond_2
    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    iget v1, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " method="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->mMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    return-void
.end method
