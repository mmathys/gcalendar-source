.class public Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/RecurrenceStart;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbBR:Lcom/google/android/gms/reminders/model/DateTimeEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/reminders/model/DateTimeEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->zzbBR:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->mVersionCode:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/reminders/model/DateTime;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->mVersionCode:I

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->zzbBR:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->zzbBR:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/RecurrenceStart;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceStart;->getStartDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;Z)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/RecurrenceStart;)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceStart;->getStartDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/RecurrenceStart;Lcom/google/android/gms/reminders/model/RecurrenceStart;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceStart;->getStartDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceStart;->getStartDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/RecurrenceStart;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/RecurrenceStart;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceStart;Lcom/google/android/gms/reminders/model/RecurrenceStart;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->zzGu()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v0

    return-object v0
.end method

.method public getStartDateTime()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->zzbBR:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceStart;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzo;->zza(Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGu()Lcom/google/android/gms/reminders/model/RecurrenceStart;
    .locals 0

    return-object p0
.end method
