.class public Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/RecurrenceEnd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbBA:Ljava/lang/Integer;

.field private final zzbBB:Ljava/lang/Boolean;

.field private final zzbBD:Lcom/google/android/gms/reminders/model/DateTimeEntity;

.field private final zzbBE:Lcom/google/android/gms/reminders/model/DateTimeEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/reminders/model/DateTimeEntity;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/android/gms/reminders/model/DateTimeEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBD:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBA:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBB:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBE:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->mVersionCode:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/reminders/model/DateTime;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/android/gms/reminders/model/DateTime;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBA:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBB:Ljava/lang/Boolean;

    if-eqz p5, :cond_0

    check-cast p1, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBD:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    check-cast p4, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBE:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBD:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    if-nez p4, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBE:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-direct {v1, p4}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)V
    .locals 6

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenew()Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/android/gms/reminders/model/DateTime;Z)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenew()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/RecurrenceEnd;Lcom/google/android/gms/reminders/model/RecurrenceEnd;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenew()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenew()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceEnd;Lcom/google/android/gms/reminders/model/RecurrenceEnd;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzGr()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRenew()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBB:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBE:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    return-object v0
.end method

.method public getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBD:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    return-object v0
.end method

.method public getNumOccurrences()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zzbBA:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzm;->zza(Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGr()Lcom/google/android/gms/reminders/model/RecurrenceEnd;
    .locals 0

    return-object p0
.end method
