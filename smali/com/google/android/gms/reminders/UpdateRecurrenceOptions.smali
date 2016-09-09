.class public Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$1;,
        Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;
    }
.end annotation


# static fields
.field public static final ALL_INSTANCES_OPTION:Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbyM:Z

.field private final zzbyS:I

.field private final zzbyT:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;->build()Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->ALL_INSTANCES_OPTION:Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->mVersionCode:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    const-string v2, "Invalid update mode"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    if-nez p2, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->zzbyS:I

    if-nez p3, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->zzbyM:Z

    iput-object p4, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->zzbyT:Ljava/lang/Long;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;-><init>(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExcludeExceptions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->zzbyM:Z

    return v0
.end method

.method public getReferenceTimeMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->zzbyT:Ljava/lang/Long;

    return-object v0
.end method

.method public getUpdateMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->zzbyS:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/zzf;->zza(Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;Landroid/os/Parcel;I)V

    return-void
.end method
