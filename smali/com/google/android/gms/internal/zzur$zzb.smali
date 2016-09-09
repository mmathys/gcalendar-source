.class Lcom/google/android/gms/internal/zzur$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zzQm:Lcom/google/android/gms/common/api/Status;

.field private final zzbzv:Lcom/google/android/gms/reminders/model/RemindersBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/reminders/model/RemindersBuffer;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$zzb;->zzbzv:Lcom/google/android/gms/reminders/model/RemindersBuffer;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzur$zzb;->zzQm:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public getRemindersBuffer()Lcom/google/android/gms/reminders/model/RemindersBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$zzb;->zzbzv:Lcom/google/android/gms/reminders/model/RemindersBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$zzb;->zzQm:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
