.class public final Lcom/google/android/gms/internal/zzmj;
.super Lcom/google/android/gms/common/api/GoogleApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmj$zzb;,
        Lcom/google/android/gms/internal/zzmj$zza;,
        Lcom/google/android/gms/internal/zzmj$zzd;,
        Lcom/google/android/gms/internal/zzmj$zzc;,
        Lcom/google/android/gms/internal/zzmj$zzf;,
        Lcom/google/android/gms/internal/zzmj$zze;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzYG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzmo",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzajB:Lcom/google/android/gms/common/GoogleApiAvailability;

.field final zzajC:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzwk;",
            "Lcom/google/android/gms/internal/zzwl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzajz:I

.field private final zzakI:Ljava/util/concurrent/locks/Condition;

.field final zzakJ:Lcom/google/android/gms/common/internal/zzk;

.field final zzakK:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzmj$zzf",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile zzakL:Z

.field private zzakM:J

.field private zzakN:J

.field private final zzakO:Lcom/google/android/gms/internal/zzmj$zza;

.field zzakP:Lcom/google/android/gms/internal/zzmj$zzd;

.field final zzakQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field

.field final zzakR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field zzakS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzakT:Lcom/google/android/gms/internal/zzmk;

.field private zzakU:Lcom/google/android/gms/common/ConnectionResult;

.field final zzakV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzmj$zzf",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzakW:Lcom/google/android/gms/common/api/ResultStore;

.field private final zzakX:Lcom/google/android/gms/internal/zzmj$zze;

.field private final zzakY:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final zzakZ:Lcom/google/android/gms/common/internal/zzk$zza;

.field private final zzakd:Ljava/util/concurrent/locks/Lock;

.field final zzaks:Lcom/google/android/gms/common/internal/zzf;

.field final zzakt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zznY:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzwk;",
            "Lcom/google/android/gms/internal/zzwl;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakK:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakM:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakN:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakQ:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakR:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakS:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakU:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzYG:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakV:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/zzmj$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzmj$1;-><init>(Lcom/google/android/gms/internal/zzmj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakX:Lcom/google/android/gms/internal/zzmj$zze;

    new-instance v2, Lcom/google/android/gms/internal/zzmj$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzmj$2;-><init>(Lcom/google/android/gms/internal/zzmj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakY:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v2, Lcom/google/android/gms/internal/zzmj$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzmj$3;-><init>(Lcom/google/android/gms/internal/zzmj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakZ:Lcom/google/android/gms/common/internal/zzk$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmj;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/common/internal/zzk;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmj;->zzakZ:Lcom/google/android/gms/common/internal/zzk$zza;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzk$zza;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakJ:Lcom/google/android/gms/common/internal/zzk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmj;->zznY:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/zzmj$zza;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/zzmj$zza;-><init>(Lcom/google/android/gms/internal/zzmj;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzajB:Lcom/google/android/gms/common/GoogleApiAvailability;

    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/gms/internal/zzmj;->zzajz:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakt:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakI:Ljava/util/concurrent/locks/Condition;

    new-instance v2, Lcom/google/android/gms/internal/zzmi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzmi;-><init>(Lcom/google/android/gms/internal/zzmj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmj;->zzakJ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmj;->zzakJ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->zzou()Ljava/util/Map;

    move-result-object v10

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/common/api/Api;

    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/zzf$zza;

    iget-boolean v2, v2, Lcom/google/android/gms/common/internal/zzf$zza;->zzaoA:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_3
    move v4, v2

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakt:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zzni()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zzng()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/zzmj;->zzakY:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-direct {p0, v9, v4}, Lcom/google/android/gms/internal/zzmj;->zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/zzmj;->zza(Lcom/google/android/gms/common/api/Api$zze;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/zzam;

    move-result-object v2

    :goto_5
    iget-object v3, p0, Lcom/google/android/gms/internal/zzmj;->zzakQ:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zznh()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zznf()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/zzmj;->zzakY:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-direct {p0, v9, v4}, Lcom/google/android/gms/internal/zzmj;->zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/zzmj;->zza(Lcom/google/android/gms/common/api/Api$zza;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v2

    goto :goto_5

    :cond_4
    iput-object p3, p0, Lcom/google/android/gms/internal/zzmj;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzajC:Lcom/google/android/gms/common/api/Api$zza;

    return-void

    :cond_5
    move v4, v2

    goto :goto_4
.end method

.method private resume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->zznJ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static zza(Lcom/google/android/gms/common/api/Api$zza;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzmj$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzmj$4;-><init>(Lcom/google/android/gms/internal/zzmj;Lcom/google/android/gms/common/api/Api;I)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmj;)Lcom/google/android/gms/common/api/ResultStore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakW:Lcom/google/android/gms/common/api/ResultStore;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/common/api/Api$zze;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/zzam;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzd;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zze",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")",
            "Lcom/google/android/gms/common/internal/zzam;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/zzam;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$zze;->zznk()I

    move-result v3

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/Api$zze;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzam;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzd;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzmj$zzf;Lcom/google/android/gms/common/api/ResultStore;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmj$zzf",
            "<*>;",
            "Lcom/google/android/gms/common/api/ResultStore;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmj$zzf;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzmj$zzc;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzmj$zzc;-><init>(Lcom/google/android/gms/internal/zzmj$zzf;Lcom/google/android/gms/common/api/ResultStore;Landroid/os/IBinder;Lcom/google/android/gms/internal/zzmj$1;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/zzmj$zzf;->zza(Lcom/google/android/gms/internal/zzmj$zze;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzmj$zzc;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzmj$zzc;-><init>(Lcom/google/android/gms/internal/zzmj$zzf;Lcom/google/android/gms/common/api/ResultStore;Landroid/os/IBinder;Lcom/google/android/gms/internal/zzmj$1;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/zzmj$zzf;->zza(Lcom/google/android/gms/internal/zzmj$zze;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmj$zzf;->cancel()V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmj$zzf;->getResultId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/ResultStore;->remove(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/zzmj$zzf;->zza(Lcom/google/android/gms/internal/zzmj$zze;)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmj$zzf;->cancel()V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmj$zzf;->getResultId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/ResultStore;->remove(I)V

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzmj;)Lcom/google/android/gms/internal/zzmk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzmj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmj;->resume()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzmj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmj;->zznK()V

    return-void
.end method

.method private zznK()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->zznM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->connect()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakI:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzaiL:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakU:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakU:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public connect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmk;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->zznM()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmk;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " mResuming="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakL:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakK:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakV:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmj;->zzakQ:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zznh()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zzb;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zznY:Landroid/os/Looper;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzmg;

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzmh;

    return v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakJ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakJ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakJ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakQ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzmc$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmc$zza;->zznh()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakQ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmc$zza;->zznh()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzmk;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zza(Lcom/google/android/gms/internal/zzmj$zzb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzmj$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmj$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzmj$zzf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzmj$zzf",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakV:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakX:Lcom/google/android/gms/internal/zzmj$zze;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzmj$zzf;->zza(Lcom/google/android/gms/internal/zzmj$zze;)V

    return-void
.end method

.method zzb(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzmj$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmj$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zzg(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmj;->zzakU:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/zzmi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmi;-><init>(Lcom/google/android/gms/internal/zzmj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmk;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakI:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zznF()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmj$zzf;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzmj$zzf;->zza(Lcom/google/android/gms/internal/zzmj$zze;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmj$zzf;->getResultId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmj$zzf;->cancel()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmj$zzf;->zznr()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmj$zzf;->zznh()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzmj;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zzb;->zznj()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmj;->zzakW:Lcom/google/android/gms/common/api/ResultStore;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/zzmj;->zza(Lcom/google/android/gms/internal/zzmj$zzf;Lcom/google/android/gms/common/api/ResultStore;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzYG:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmo;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzYG:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method zznG()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->disconnect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method zznH()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzmh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmj;->zzakt:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmj;->zzajB:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmj;->zzajC:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzmj;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzmh;-><init>(Lcom/google/android/gms/internal/zzmj;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmk;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakI:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zznI()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->zznM()Z

    new-instance v0, Lcom/google/android/gms/internal/zzmg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmg;-><init>(Lcom/google/android/gms/internal/zzmj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakT:Lcom/google/android/gms/internal/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmk;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakI:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zznJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakL:Z

    return v0
.end method

.method zznL()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->zznJ()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzmj;->zzakL:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakP:Lcom/google/android/gms/internal/zzmj$zzd;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzmj$zzd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzmj$zzd;-><init>(Lcom/google/android/gms/internal/zzmj;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmj;->zzajB:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmm;Lcom/google/android/gms/common/GoogleApiAvailability;)Lcom/google/android/gms/internal/zzmm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmj$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakP:Lcom/google/android/gms/internal/zzmj$zzd;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzmj$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakM:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzmj$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzmj$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzmj;->zzakN:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzmj$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method zznM()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmj;->zznJ()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakL:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzmj$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakO:Lcom/google/android/gms/internal/zzmj$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmj$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakP:Lcom/google/android/gms/internal/zzmj$zzd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakP:Lcom/google/android/gms/internal/zzmj$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmj$zzd;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakP:Lcom/google/android/gms/internal/zzmj$zzd;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method zznN()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/internal/zzmj;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzmo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/internal/zzmo",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzmo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zznY:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzmo;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzYG:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj;->zzakd:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
