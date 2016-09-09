.class public Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbyD:Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;


# instance fields
.field public final mVersionCode:I

.field private final zzbyA:Ljava/lang/String;

.field private final zzbyB:Ljava/lang/String;

.field private final zzbyC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/reminders/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->zzbyD:Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->zzbyA:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->zzbyB:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->zzbyC:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/zzb;->zza(Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->zzbyC:Z

    return v0
.end method

.method public zzGb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->zzbyA:Ljava/lang/String;

    return-object v0
.end method

.method public zzGc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->zzbyB:Ljava/lang/String;

    return-object v0
.end method
