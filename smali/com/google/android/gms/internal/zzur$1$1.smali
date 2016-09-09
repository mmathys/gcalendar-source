.class Lcom/google/android/gms/internal/zzur$1$1;
.super Lcom/google/android/gms/internal/zzui;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur$1;->zza(Lcom/google/android/gms/internal/zzun;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbzh:Lcom/google/android/gms/internal/zzur$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$1$1;->zzbzh:Lcom/google/android/gms/internal/zzur$1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzui;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzur$1$1;->zzbzh:Lcom/google/android/gms/internal/zzur$1;

    new-instance v2, Lcom/google/android/gms/internal/zzur$zzb;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/zzur$zzb;-><init>(Lcom/google/android/gms/reminders/model/RemindersBuffer;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzur$1;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/RemindersBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method
