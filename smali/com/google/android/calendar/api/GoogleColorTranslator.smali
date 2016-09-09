.class public Lcom/google/android/calendar/api/GoogleColorTranslator;
.super Ljava/lang/Object;
.source "GoogleColorTranslator.java"

# interfaces
.implements Lcom/google/android/calendar/api/ColorTranslator;


# static fields
.field private static final sColorsIndices:Landroid/util/SparseIntArray;

.field private static final sLightColorVariants:Landroid/util/SparseIntArray;

.field private static final sUpdatedColors:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, -0x867935

    const v6, -0x9e9e9f

    const v5, -0xc0ae4b

    const v4, -0xf47fbd

    const v3, -0xfc641b

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    .line 25
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x7c5de

    const/high16 v2, -0x2b0000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x5a8c4

    const v2, -0xbaee2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x8ac9

    const v2, -0x109400

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const/16 v1, -0x52ba

    const v2, -0xf6d00

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x52e9b

    const v2, -0x940da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x4167d

    const v2, -0x1b3bbf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x4c2394

    const v2, -0x3f35cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x842eb8

    const v2, -0x834cbe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xe9589b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xbd296e

    const v2, -0xff6978

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x6d1e40

    const v2, -0xcc4987

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x601e19

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x603919

    const v2, -0xbd7a0c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xb67919

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x656301

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x466501

    const v2, -0x4c6225

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x5b851e

    const v2, -0x619651

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x328b1a

    const v2, -0x71db56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x335954

    const v2, -0x52eba9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x96e4e

    const v2, -0x27e4a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x2f949c

    const v2, -0x19838d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x538da2

    const v2, -0x86aab8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x3d3d3e

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x354241

    const v2, -0x586472

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x23ded9

    const/high16 v2, -0x2b0000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const/16 v1, -0x4788

    const v2, -0xbaee2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x428a5

    const v2, -0x940da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xae48b7

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x851841

    const v2, -0xcc4987

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xb92925

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xab7b13

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x5b4204

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x245201

    const v2, -0x71db56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const/16 v1, -0x7784

    const v2, -0x19838d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x1e1e1f

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const/high16 v1, -0x2c0000

    const/high16 v2, -0x2b0000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xcafe3

    const v2, -0xbaee2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x119500

    const v2, -0x109400

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x106e00

    const v2, -0xf6d00

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xa41db

    const v2, -0x940da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x1d34b4

    const v2, -0x1b3bbf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x4036ce

    const v2, -0x3f35cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x844dbf

    const v2, -0x834cbe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xf580be

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xff6a79

    const v2, -0xff6978

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xfd651c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xbe7b0d

    const v2, -0xbd7a0c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0xc0a357

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x877a36

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x4d6326

    const v2, -0x4c6225

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x72dc57

    const v2, -0x71db56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x53ecaa

    const v2, -0x52eba9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x28e5a1

    const v2, -0x27e4a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x1a848e

    const v2, -0x19838d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x87abb9

    const v2, -0x86aab8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    const v1, -0x9c9c9d

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    .line 92
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const/high16 v1, -0x2b0000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0xbaee2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x109400

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0xf6d00

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x940da

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x1b3bbf

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x3f35cd

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x834cbe

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0xff6978

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0xcc4987

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0xbd7a0c

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x4c6225

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x619651

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x71db56

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x52eba9

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x27e4a0

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x19838d

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x86aab8

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    const v1, -0x586472

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    .line 125
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const/high16 v1, -0x2b0000

    const v2, -0xb383d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xbaee2

    const/16 v2, -0x3344

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x109400

    const/16 v2, -0x1f4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 128
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xf6d00

    const v2, -0x3174e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x940da

    const v2, -0x3174e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x1b3bbf

    const v2, -0x3174e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x3f35cd

    const v2, -0xf0b3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x834cbe

    const v2, -0x231238

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x481e33

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xff6978

    const v2, -0x4d2025

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xcc4987

    const v2, -0x481e33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x4c1a04

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0xbd7a0c

    const v2, -0x392504

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x3a3517

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x3a3517

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x4c6225

    const v2, -0x2e3b17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x619651

    const v2, -0x2e3b17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x71db56

    const v2, -0x1e4119

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x52eba9

    const v2, -0x74430

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x27e4a0

    const v2, -0x74430

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x19838d

    const v2, -0xb383d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x86aab8

    const v2, -0x283338

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x111112

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x586472

    const v2, -0x283338

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustColorBrightnessAndSaturation(I)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 211
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 212
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 213
    aget v1, v0, v4

    .line 215
    const v2, 0x3f4a3d71    # 0.79f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 217
    aget v1, v0, v3

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v3

    .line 218
    aget v1, v0, v4

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 221
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method private translateToColorName(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 181
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 182
    if-ne v1, v2, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    .line 185
    :cond_0
    array-length v0, p2

    if-ge v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 186
    aget-object v0, p2, v1

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private translateToDisplayColor(I)I
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 172
    if-ltz v0, :cond_0

    .line 173
    sget-object v1, Lcom/google/android/calendar/api/GoogleColorTranslator;->sUpdatedColors:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/calendar/api/GoogleColorTranslator;->adjustColorBrightnessAndSaturation(I)I

    move-result v0

    goto :goto_0
.end method

.method private translateToLightColor(I)I
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sLightColorVariants:Landroid/util/SparseIntArray;

    const v1, -0x111112

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private translateToPaletteIndex(I)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 196
    sget-object v0, Lcom/google/android/calendar/api/GoogleColorTranslator;->sColorsIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 197
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public translateColor(I)Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;
    .locals 2

    .prologue
    .line 153
    .line 154
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/calendar/api/R$array;->api_color_names:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/GoogleColorTranslator;->translateColor(I[Ljava/lang/String;)Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;

    move-result-object v0

    return-object v0
.end method

.method translateColor(I[Ljava/lang/String;)Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;
    .locals 5

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/GoogleColorTranslator;->translateToDisplayColor(I)I

    move-result v0

    .line 160
    new-instance v1, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;

    .line 162
    invoke-direct {p0, v0, p2}, Lcom/google/android/calendar/api/GoogleColorTranslator;->translateToColorName(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/GoogleColorTranslator;->translateToLightColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 164
    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/GoogleColorTranslator;->translateToPaletteIndex(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/calendar/api/ColorTranslator$TranslationResult;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 160
    return-object v1
.end method
