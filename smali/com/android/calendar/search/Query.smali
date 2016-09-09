.class public Lcom/android/calendar/search/Query;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/search/Query;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendarId:J

.field private mEndDay:I

.field private mStartDay:I

.field private mWhat:Ljava/lang/String;

.field private mWhere:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/calendar/search/Query$1;

    invoke-direct {v0}, Lcom/android/calendar/search/Query$1;-><init>()V

    sput-object v0, Lcom/android/calendar/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/android/calendar/search/Query;->mWhat:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/android/calendar/search/Query;->mWhere:Ljava/lang/String;

    .line 89
    iput v0, p0, Lcom/android/calendar/search/Query;->mStartDay:I

    .line 90
    iput v0, p0, Lcom/android/calendar/search/Query;->mEndDay:I

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/search/Query;->mCalendarId:J

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/search/Query;->mWhat:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/search/Query;->mWhere:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/search/Query;->mStartDay:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/search/Query;->mEndDay:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/search/Query;->mCalendarId:J

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/search/Query$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/calendar/search/Query;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/calendar/search/Query;->mWhat:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/search/Query;->mWhere:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/android/calendar/search/Query;->mStartDay:I

    .line 98
    iput v1, p0, Lcom/android/calendar/search/Query;->mEndDay:I

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/search/Query;->mCalendarId:J

    .line 100
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getWhat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calendar/search/Query;->mWhat:Ljava/lang/String;

    return-object v0
.end method

.method public isSimple()Z
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/search/Query;->mWhat:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/search/Query;->mWhere:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/calendar/search/Query;->mStartDay:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/search/Query;->mCalendarId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/android/calendar/search/Query;->mWhat:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "what="

    iget-object v0, p0, Lcom/android/calendar/search/Query;->mWhat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/search/Query;->mWhere:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "where="

    iget-object v0, p0, Lcom/android/calendar/search/Query;->mWhere:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    iget v0, p0, Lcom/android/calendar/search/Query;->mStartDay:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/calendar/search/Query;->mStartDay:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_2
    iget v0, p0, Lcom/android/calendar/search/Query;->mEndDay:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/calendar/search/Query;->mEndDay:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_3
    iget-wide v2, p0, Lcom/android/calendar/search/Query;->mCalendarId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/android/calendar/search/Query;->mCalendarId:J

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x1a

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "calid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/search/Query;->mWhat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/calendar/search/Query;->mWhere:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget v0, p0, Lcom/android/calendar/search/Query;->mStartDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/android/calendar/search/Query;->mEndDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-wide v0, p0, Lcom/android/calendar/search/Query;->mCalendarId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    return-void
.end method
