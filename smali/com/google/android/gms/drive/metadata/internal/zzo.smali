.class public Lcom/google/android/gms/drive/metadata/internal/zzo;
.super Lcom/google/android/gms/drive/metadata/zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/zza",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected synthetic zzs(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzz(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzz(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zzo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
