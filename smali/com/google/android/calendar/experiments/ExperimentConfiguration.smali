.class public final Lcom/google/android/calendar/experiments/ExperimentConfiguration;
.super Ljava/lang/Object;
.source "ExperimentConfiguration.java"


# static fields
.field public static final BIRTHDAYS_CALENDARS_RARE_SYNC:Lcom/google/android/calendar/experiments/Experiment;

.field private static final BUGFOOD_OR_EMULATOR:Z

.field public static final DEDUPLICATE_SETTINGS_SYNC:Lcom/google/android/calendar/experiments/Experiment;

.field static final EXPERIMENTS:[Lcom/google/android/calendar/experiments/Experiment;

.field public static final HABIT_CREATE_SYNC_IGNORE_BACKOFF:Lcom/google/android/calendar/experiments/Experiment;

.field public static final HABIT_CREATE_SYNC_USE_EXPEDITE:Lcom/google/android/calendar/experiments/Experiment;

.field public static final HOLIDAYS_CALENDARS_RARE_SYNC:Lcom/google/android/calendar/experiments/Experiment;

.field public static final OPTIMIZE_SUB_VALUES_UPDATES:Lcom/google/android/calendar/experiments/Experiment;

.field public static final PARALLEL_ACCOUNT_SYNC_REQUESTS:Lcom/google/android/calendar/experiments/Experiment;

.field public static final PRIMES_MEMORY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

.field public static final PRIMES_UI_LATENCY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

.field public static final PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

.field private static final RANDOM_SALTS:[I

.field private static final SALT_DEDUPLICATE_SETTINGS_SYNC:I

.field private static final SALT_EXPERIMENTS_OPTIMIZING_UPDATES:I

.field private static final SALT_HABIT_CREATE_SPECIAL_SYNC_FLAGS:I

.field private static final SALT_HOLIDAYS_AND_BIRTHDAYS_RARE_SYNC:I

.field private static final SALT_PARALLEL_ACCOUNT_SYNC_REQUESTS:I

.field private static final SALT_PRIMES_LATENCY_INSTRUMENTATION:I

.field private static final SALT_PRIMES_MEMORY_INSTRUMENTATION:I

.field private static final SALT_PROJECT_DUBAI:I

.field private static final SALT_SYNC_RECENTS_WITH_SETTINGS:I

.field public static final STRIP_DTSTART_FROM_UPDATES:Lcom/google/android/calendar/experiments/Experiment;

.field public static final SYNC_RECENTS_WITH_SETTINGS:Lcom/google/android/calendar/experiments/Experiment;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x5

    const/16 v6, 0x50

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    invoke-static {}, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->isProbablyEmulator()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 19
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    .line 25
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    aget v0, v0, v4

    sput v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_DEDUPLICATE_SETTINGS_SYNC:I

    .line 26
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    aget v0, v0, v5

    sput v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_SYNC_RECENTS_WITH_SETTINGS:I

    .line 27
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    sput v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_PARALLEL_ACCOUNT_SYNC_REQUESTS:I

    .line 28
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_EXPERIMENTS_OPTIMIZING_UPDATES:I

    .line 29
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    sput v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_HOLIDAYS_AND_BIRTHDAYS_RARE_SYNC:I

    .line 30
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    aget v0, v0, v7

    sput v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_PRIMES_MEMORY_INSTRUMENTATION:I

    .line 31
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    sput v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_PRIMES_LATENCY_INSTRUMENTATION:I

    .line 32
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    sput v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_HABIT_CREATE_SPECIAL_SYNC_FLAGS:I

    .line 33
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->RANDOM_SALTS:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_PROJECT_DUBAI:I

    .line 36
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "DDSS"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_DEDUPLICATE_SETTINGS_SYNC:I

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->DEDUPLICATE_SETTINGS_SYNC:Lcom/google/android/calendar/experiments/Experiment;

    .line 45
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "SRWS"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_SYNC_RECENTS_WITH_SETTINGS:I

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SYNC_RECENTS_WITH_SETTINGS:Lcom/google/android/calendar/experiments/Experiment;

    .line 51
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "PASR"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_PARALLEL_ACCOUNT_SYNC_REQUESTS:I

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v4}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PARALLEL_ACCOUNT_SYNC_REQUESTS:Lcom/google/android/calendar/experiments/Experiment;

    .line 58
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "SDFU"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_EXPERIMENTS_OPTIMIZING_UPDATES:I

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    .line 60
    invoke-virtual {v0, v5}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->STRIP_DTSTART_FROM_UPDATES:Lcom/google/android/calendar/experiments/Experiment;

    .line 65
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "HCRS"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_HOLIDAYS_AND_BIRTHDAYS_RARE_SYNC:I

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v4}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->HOLIDAYS_CALENDARS_RARE_SYNC:Lcom/google/android/calendar/experiments/Experiment;

    .line 72
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "BCRS"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_HOLIDAYS_AND_BIRTHDAYS_RARE_SYNC:I

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v5}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BIRTHDAYS_CALENDARS_RARE_SYNC:Lcom/google/android/calendar/experiments/Experiment;

    .line 79
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "OSVU"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_EXPERIMENTS_OPTIMIZING_UPDATES:I

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    .line 81
    invoke-virtual {v0, v5}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->OPTIMIZE_SUB_VALUES_UPDATES:Lcom/google/android/calendar/experiments/Experiment;

    .line 86
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "PMI"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_PRIMES_MEMORY_INSTRUMENTATION:I

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    .line 88
    invoke-virtual {v0, v4}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PRIMES_MEMORY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

    .line 93
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "PLI"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_PRIMES_LATENCY_INSTRUMENTATION:I

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    .line 95
    invoke-virtual {v0, v4}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v4}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PRIMES_UI_LATENCY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

    .line 100
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "HCSE"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_HABIT_CREATE_SPECIAL_SYNC_FLAGS:I

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->HABIT_CREATE_SYNC_USE_EXPEDITE:Lcom/google/android/calendar/experiments/Experiment;

    .line 105
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "HCIB"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_HABIT_CREATE_SPECIAL_SYNC_FLAGS:I

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->HABIT_CREATE_SYNC_IGNORE_BACKOFF:Lcom/google/android/calendar/experiments/Experiment;

    .line 110
    new-instance v0, Lcom/google/android/calendar/experiments/Experiment$Builder;

    const-string v1, "PD"

    sget v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SALT_PROJECT_DUBAI:I

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/calendar/experiments/Experiment$Builder;-><init>(Ljava/lang/String;III)V

    sget-boolean v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BUGFOOD_OR_EMULATOR:Z

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v4}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceActiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v5}, Lcom/google/android/calendar/experiments/Experiment$Builder;->forceInactiveIf(Z)Lcom/google/android/calendar/experiments/Experiment$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/google/android/calendar/experiments/Experiment$Builder;->build()Lcom/google/android/calendar/experiments/Experiment;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    .line 118
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/calendar/experiments/Experiment;

    sget-object v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->DEDUPLICATE_SETTINGS_SYNC:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SYNC_RECENTS_WITH_SETTINGS:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PARALLEL_ACCOUNT_SYNC_REQUESTS:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->STRIP_DTSTART_FROM_UPDATES:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->HOLIDAYS_CALENDARS_RARE_SYNC:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->BIRTHDAYS_CALENDARS_RARE_SYNC:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->OPTIMIZE_SUB_VALUES_UPDATES:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PRIMES_MEMORY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PRIMES_UI_LATENCY_INSTRUMENTATION:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->HABIT_CREATE_SYNC_USE_EXPEDITE:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->HABIT_CREATE_SYNC_IGNORE_BACKOFF:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v1, v0, v8

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->EXPERIMENTS:[Lcom/google/android/calendar/experiments/Experiment;

    return-void

    .line 19
    nop

    :array_0
    .array-data 4
        0x76d817a3
        -0xcc7912e
        0x3b2999e7
        -0x7c500cac
        -0xe20d78a
        0x3031357c
        -0x7ed82723
        0x15c0d2a6
        0x2c0b3c92
        -0x2dcc4b53
        0x6912d490
        0x5efcbb80
        0x3e2a4394
        -0x5b73bf2f
        -0x73898d94
    .end array-data
.end method

.method public static getActiveExperiments(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->EXPERIMENTS:[Lcom/google/android/calendar/experiments/Experiment;

    invoke-static {p0, v0}, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->getActiveExperiments(Landroid/content/Context;[Lcom/google/android/calendar/experiments/Experiment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getActiveExperiments(Landroid/content/Context;[Lcom/google/android/calendar/experiments/Experiment;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 147
    invoke-virtual {v3, p0}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/calendar/experiments/Experiment;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
