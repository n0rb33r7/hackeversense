.class public final enum Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;
.super Ljava/lang/Enum;
.source "EventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/events/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HEALTH_CONDITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum ALCOHOL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum ALLERGY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum COUGH_COLD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum DIARRHEA:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum DIZZY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum EARACHE:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum FEVER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum FLU:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum HIGH_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum INFECTION:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum LOW_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum MENSTRUAL_PERIOD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum NAUSEA_VOMITING:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum NORMAL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum OTHER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum SORE_THROAT:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum STRESS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field public static final enum TIRED:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 30
    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->NORMAL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v3, "COUGH_COLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->COUGH_COLD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v3, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v5, "SORE_THROAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->SORE_THROAT:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v5, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v7, "TIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->TIRED:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v7, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v9, "STRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->STRESS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v11, "FEVER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->FEVER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v11, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v13, "FLU"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->FLU:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v13, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v15, "MENSTRUAL_PERIOD"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->MENSTRUAL_PERIOD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v15, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v14, "NAUSEA_VOMITING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->NAUSEA_VOMITING:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v14, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v12, "DIARRHEA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->DIARRHEA:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v12, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v10, "ALLERGY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ALLERGY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v10, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v8, "EARACHE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->EARACHE:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v8, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v6, "INFECTION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->INFECTION:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v6, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v4, "DIZZY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->DIZZY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v4, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v2, "ALCOHOL"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ALCOHOL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v2, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v6, "LOW_SYMPTOMS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->LOW_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v6, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v4, "HIGH_SYMPTOMS"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->HIGH_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    new-instance v4, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const-string v2, "OTHER"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->OTHER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    aput-object v4, v2, v6

    .line 29
    sput-object v2, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->$VALUES:[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;
    .locals 1

    .line 29
    const-class v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;
    .locals 1

    .line 29
    sget-object v0, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->$VALUES:[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v0}, [Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    return-object v0
.end method
