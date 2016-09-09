.class final Lcom/google/android/gms/googlehelp/internal/common/zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/googlehelp/internal/common/zzd;->zzt(Landroid/app/Activity;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaFJ:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd$1;->zzaFJ:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/googlehelp/internal/common/zzd$1;->zzxo()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public zzxo()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/internal/common/zzd$1;->zzaFJ:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/googlehelp/internal/common/zzd;->zzw(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
