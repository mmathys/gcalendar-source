.class public final Lcom/google/android/gms/people/People;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/People$zza;,
        Lcom/google/android/gms/people/People$ReleasableResult;,
        Lcom/google/android/gms/people/People$PeopleOptions1p;
    }
.end annotation


# static fields
.field public static final API_1P:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/people/People$PeopleOptions1p;",
            ">;"
        }
    .end annotation
.end field

.field public static final AutocompleteApi:Lcom/google/android/gms/people/Autocomplete;

.field public static final CLIENT_KEY_1P:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/people/internal/zzn;",
            ">;"
        }
    .end annotation
.end field

.field public static final ContactsSyncApi:Lcom/google/android/gms/people/ContactsSync;

.field public static final GraphApi:Lcom/google/android/gms/people/Graph;

.field public static final GraphUpdateApi:Lcom/google/android/gms/people/GraphUpdate;

.field public static final IdentityApi:Lcom/google/android/gms/people/identity/IdentityApi;

.field public static final ImageApi:Lcom/google/android/gms/people/Images;

.field public static final InteractionFeedbackApi:Lcom/google/android/gms/people/InteractionFeedback;

.field public static final InternalApi:Lcom/google/android/gms/people/InternalApi;

.field public static final NotificationApi:Lcom/google/android/gms/people/Notifications;

.field public static final SyncApi:Lcom/google/android/gms/people/Sync;

.field static final zzaJQ:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/people/internal/zzn;",
            "Lcom/google/android/gms/people/People$PeopleOptions1p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->CLIENT_KEY_1P:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/people/People$1;

    invoke-direct {v0}, Lcom/google/android/gms/people/People$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->zzaJQ:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "People.API_1P"

    sget-object v2, Lcom/google/android/gms/people/People;->zzaJQ:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/people/People;->CLIENT_KEY_1P:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/people/People;->API_1P:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/people/identity/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->IdentityApi:Lcom/google/android/gms/people/identity/IdentityApi;

    new-instance v0, Lcom/google/android/gms/internal/zzsy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsy;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->GraphApi:Lcom/google/android/gms/people/Graph;

    new-instance v0, Lcom/google/android/gms/internal/zzsz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsz;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->GraphUpdateApi:Lcom/google/android/gms/people/GraphUpdate;

    new-instance v0, Lcom/google/android/gms/internal/zzta;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzta;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->ImageApi:Lcom/google/android/gms/people/Images;

    new-instance v0, Lcom/google/android/gms/internal/zzte;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzte;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->SyncApi:Lcom/google/android/gms/people/Sync;

    new-instance v0, Lcom/google/android/gms/internal/zzsw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsw;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->AutocompleteApi:Lcom/google/android/gms/people/Autocomplete;

    new-instance v0, Lcom/google/android/gms/internal/zztb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztb;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->InteractionFeedbackApi:Lcom/google/android/gms/people/InteractionFeedback;

    new-instance v0, Lcom/google/android/gms/internal/zztc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztc;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->InternalApi:Lcom/google/android/gms/people/InternalApi;

    new-instance v0, Lcom/google/android/gms/internal/zzsx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsx;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->ContactsSyncApi:Lcom/google/android/gms/people/ContactsSync;

    new-instance v0, Lcom/google/android/gms/internal/zztd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztd;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/People;->NotificationApi:Lcom/google/android/gms/people/Notifications;

    return-void
.end method
