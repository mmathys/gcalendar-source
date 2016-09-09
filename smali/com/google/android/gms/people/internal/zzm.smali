.class public Lcom/google/android/gms/people/internal/zzm;
.super Ljava/lang/Object;


# static fields
.field public static final zzbpp:Lcom/google/android/gms/people/internal/zzm;


# instance fields
.field private zzbpq:[Ljava/util/regex/Pattern;

.field private zzbpr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/zzm;->zzbpp:Lcom/google/android/gms/people/internal/zzm;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/google/android/gms/people/internal/zzm;->zzbpq:[Ljava/util/regex/Pattern;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/people/internal/zzm;->zzbpr:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zzL(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "config.url_uncompress.patterns"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "config.url_uncompress.replacements"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/people/internal/zzm;->zza([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized zza([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzx;->zzX(Z)V

    array-length v1, p1

    new-array v1, v1, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/google/android/gms/people/internal/zzm;->zzbpq:[Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/google/android/gms/people/internal/zzm;->zzbpr:[Ljava/lang/String;

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/people/internal/zzm;->zzbpq:[Ljava/util/regex/Pattern;

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
