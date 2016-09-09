.class public final Lcom/google/android/gms/people/internal/zzo;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzbpU:Z


# direct methods
.method public static zzEP()Z
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/people/internal/zzo;->zzcX(I)Z

    move-result v0

    return v0
.end method

.method public static zzF(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/people/internal/zzo;->zzcX(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static zzH(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/people/internal/zzo;->zzcX(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/people/internal/zzo;->zzcX(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static zzcX(I)Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/people/internal/zzo;->zzbpU:Z

    if-nez v0, :cond_0

    const-string v0, "PeopleService"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
