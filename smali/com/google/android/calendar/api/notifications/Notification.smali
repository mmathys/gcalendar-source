.class public Lcom/google/android/calendar/api/notifications/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMethod:I

.field private final mMinutesBefore:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/calendar/api/notifications/Notification$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/notifications/Notification$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/notifications/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/android/calendar/api/notifications/Notification;->checkMethod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMethod:I

    .line 41
    iput p2, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMinutesBefore:I

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/notifications/Notification;->checkMethod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMethod:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMinutesBefore:I

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/notifications/Notification$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/notifications/Notification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static checkMethod(I)I
    .locals 2

    .prologue
    .line 99
    packed-switch p0, :pswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid notification method value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_0
    return p0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static methodToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    packed-switch p0, :pswitch_data_0

    .line 121
    const-string v0, "INVALID_METHOD"

    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    const-string v0, "ALERT"

    goto :goto_0

    .line 115
    :pswitch_1
    const-string v0, "EMAIL"

    goto :goto_0

    .line 117
    :pswitch_2
    const-string v0, "SMS"

    goto :goto_0

    .line 119
    :pswitch_3
    const-string v0, "ALARM"

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 79
    goto :goto_0

    .line 82
    :cond_3
    check-cast p1, Lcom/google/android/calendar/api/notifications/Notification;

    .line 84
    iget v2, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMethod:I

    iget v3, p1, Lcom/google/android/calendar/api/notifications/Notification;->mMethod:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMinutesBefore:I

    iget v3, p1, Lcom/google/android/calendar/api/notifications/Notification;->mMinutesBefore:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMethod:I

    return v0
.end method

.method public getMinutesBefore()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMinutesBefore:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 91
    .line 92
    iget v0, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMethod:I

    add-int/lit16 v0, v0, 0x20f

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMinutesBefore:I

    add-int/2addr v0, v1

    .line 94
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "Notification{mMethod=%s, mMinutesBefore=%d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMethod:I

    .line 70
    invoke-static {v3}, Lcom/google/android/calendar/api/notifications/Notification;->methodToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMinutesBefore:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/google/android/calendar/api/notifications/Notification;->mMinutesBefore:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void
.end method
